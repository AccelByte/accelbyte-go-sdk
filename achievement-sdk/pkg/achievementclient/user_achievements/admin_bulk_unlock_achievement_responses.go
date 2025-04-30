// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_achievements

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
)

// AdminBulkUnlockAchievementReader is a Reader for the AdminBulkUnlockAchievement structure.
type AdminBulkUnlockAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkUnlockAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkUnlockAchievementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkUnlockAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkUnlockAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkUnlockAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminBulkUnlockAchievementUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkUnlockAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkUnlockAchievementOK creates a AdminBulkUnlockAchievementOK with default headers values
func NewAdminBulkUnlockAchievementOK() *AdminBulkUnlockAchievementOK {
	return &AdminBulkUnlockAchievementOK{}
}

/*AdminBulkUnlockAchievementOK handles this case with default header values.

  OK
*/
type AdminBulkUnlockAchievementOK struct {
	Payload []*achievementclientmodels.ModelsBulkUnlockAchievementResponse
}

func (o *AdminBulkUnlockAchievementOK) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] adminBulkUnlockAchievementOK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkUnlockAchievementOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminBulkUnlockAchievementOK) GetPayload() []*achievementclientmodels.ModelsBulkUnlockAchievementResponse {
	return o.Payload
}

func (o *AdminBulkUnlockAchievementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkUnlockAchievementBadRequest creates a AdminBulkUnlockAchievementBadRequest with default headers values
func NewAdminBulkUnlockAchievementBadRequest() *AdminBulkUnlockAchievementBadRequest {
	return &AdminBulkUnlockAchievementBadRequest{}
}

/*AdminBulkUnlockAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type AdminBulkUnlockAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminBulkUnlockAchievementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] adminBulkUnlockAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkUnlockAchievementBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminBulkUnlockAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBulkUnlockAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkUnlockAchievementUnauthorized creates a AdminBulkUnlockAchievementUnauthorized with default headers values
func NewAdminBulkUnlockAchievementUnauthorized() *AdminBulkUnlockAchievementUnauthorized {
	return &AdminBulkUnlockAchievementUnauthorized{}
}

/*AdminBulkUnlockAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminBulkUnlockAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminBulkUnlockAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] adminBulkUnlockAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkUnlockAchievementUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminBulkUnlockAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBulkUnlockAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkUnlockAchievementNotFound creates a AdminBulkUnlockAchievementNotFound with default headers values
func NewAdminBulkUnlockAchievementNotFound() *AdminBulkUnlockAchievementNotFound {
	return &AdminBulkUnlockAchievementNotFound{}
}

/*AdminBulkUnlockAchievementNotFound handles this case with default header values.

  Not Found
*/
type AdminBulkUnlockAchievementNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminBulkUnlockAchievementNotFound) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] adminBulkUnlockAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkUnlockAchievementNotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminBulkUnlockAchievementNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBulkUnlockAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkUnlockAchievementUnprocessableEntity creates a AdminBulkUnlockAchievementUnprocessableEntity with default headers values
func NewAdminBulkUnlockAchievementUnprocessableEntity() *AdminBulkUnlockAchievementUnprocessableEntity {
	return &AdminBulkUnlockAchievementUnprocessableEntity{}
}

/*AdminBulkUnlockAchievementUnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type AdminBulkUnlockAchievementUnprocessableEntity struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminBulkUnlockAchievementUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] adminBulkUnlockAchievementUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminBulkUnlockAchievementUnprocessableEntity) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminBulkUnlockAchievementUnprocessableEntity) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBulkUnlockAchievementUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkUnlockAchievementInternalServerError creates a AdminBulkUnlockAchievementInternalServerError with default headers values
func NewAdminBulkUnlockAchievementInternalServerError() *AdminBulkUnlockAchievementInternalServerError {
	return &AdminBulkUnlockAchievementInternalServerError{}
}

/*AdminBulkUnlockAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminBulkUnlockAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminBulkUnlockAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] adminBulkUnlockAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkUnlockAchievementInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminBulkUnlockAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBulkUnlockAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
