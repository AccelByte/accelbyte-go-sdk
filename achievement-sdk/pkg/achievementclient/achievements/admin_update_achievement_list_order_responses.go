// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievements

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

// AdminUpdateAchievementListOrderReader is a Reader for the AdminUpdateAchievementListOrder structure.
type AdminUpdateAchievementListOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateAchievementListOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateAchievementListOrderNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateAchievementListOrderBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateAchievementListOrderUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateAchievementListOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateAchievementListOrderInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateAchievementListOrderNoContent creates a AdminUpdateAchievementListOrderNoContent with default headers values
func NewAdminUpdateAchievementListOrderNoContent() *AdminUpdateAchievementListOrderNoContent {
	return &AdminUpdateAchievementListOrderNoContent{}
}

/*AdminUpdateAchievementListOrderNoContent handles this case with default header values.

  No Content
*/
type AdminUpdateAchievementListOrderNoContent struct {
}

func (o *AdminUpdateAchievementListOrderNoContent) Error() string {
	return fmt.Sprintf("[PATCH /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementListOrderNoContent ", 204)
}

func (o *AdminUpdateAchievementListOrderNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateAchievementListOrderBadRequest creates a AdminUpdateAchievementListOrderBadRequest with default headers values
func NewAdminUpdateAchievementListOrderBadRequest() *AdminUpdateAchievementListOrderBadRequest {
	return &AdminUpdateAchievementListOrderBadRequest{}
}

/*AdminUpdateAchievementListOrderBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateAchievementListOrderBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUpdateAchievementListOrderBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementListOrderBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateAchievementListOrderBadRequest) ToJSONString() string {
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

func (o *AdminUpdateAchievementListOrderBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAchievementListOrderBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateAchievementListOrderUnauthorized creates a AdminUpdateAchievementListOrderUnauthorized with default headers values
func NewAdminUpdateAchievementListOrderUnauthorized() *AdminUpdateAchievementListOrderUnauthorized {
	return &AdminUpdateAchievementListOrderUnauthorized{}
}

/*AdminUpdateAchievementListOrderUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateAchievementListOrderUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUpdateAchievementListOrderUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementListOrderUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateAchievementListOrderUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateAchievementListOrderUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAchievementListOrderUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateAchievementListOrderNotFound creates a AdminUpdateAchievementListOrderNotFound with default headers values
func NewAdminUpdateAchievementListOrderNotFound() *AdminUpdateAchievementListOrderNotFound {
	return &AdminUpdateAchievementListOrderNotFound{}
}

/*AdminUpdateAchievementListOrderNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateAchievementListOrderNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUpdateAchievementListOrderNotFound) Error() string {
	return fmt.Sprintf("[PATCH /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementListOrderNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateAchievementListOrderNotFound) ToJSONString() string {
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

func (o *AdminUpdateAchievementListOrderNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAchievementListOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateAchievementListOrderInternalServerError creates a AdminUpdateAchievementListOrderInternalServerError with default headers values
func NewAdminUpdateAchievementListOrderInternalServerError() *AdminUpdateAchievementListOrderInternalServerError {
	return &AdminUpdateAchievementListOrderInternalServerError{}
}

/*AdminUpdateAchievementListOrderInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateAchievementListOrderInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUpdateAchievementListOrderInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementListOrderInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateAchievementListOrderInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateAchievementListOrderInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAchievementListOrderInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
