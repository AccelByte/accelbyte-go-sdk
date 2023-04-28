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

// AdminGetAchievementReader is a Reader for the AdminGetAchievement structure.
type AdminGetAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAchievementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAchievementOK creates a AdminGetAchievementOK with default headers values
func NewAdminGetAchievementOK() *AdminGetAchievementOK {
	return &AdminGetAchievementOK{}
}

/*AdminGetAchievementOK handles this case with default header values.

  OK
*/
type AdminGetAchievementOK struct {
	Payload *achievementclientmodels.ModelsAchievementResponse
}

func (o *AdminGetAchievementOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminGetAchievementOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAchievementOK) ToJSONString() string {
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

func (o *AdminGetAchievementOK) GetPayload() *achievementclientmodels.ModelsAchievementResponse {
	return o.Payload
}

func (o *AdminGetAchievementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsAchievementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAchievementBadRequest creates a AdminGetAchievementBadRequest with default headers values
func NewAdminGetAchievementBadRequest() *AdminGetAchievementBadRequest {
	return &AdminGetAchievementBadRequest{}
}

/*AdminGetAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminGetAchievementBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminGetAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetAchievementBadRequest) ToJSONString() string {
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

func (o *AdminGetAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetAchievementUnauthorized creates a AdminGetAchievementUnauthorized with default headers values
func NewAdminGetAchievementUnauthorized() *AdminGetAchievementUnauthorized {
	return &AdminGetAchievementUnauthorized{}
}

/*AdminGetAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminGetAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminGetAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAchievementUnauthorized) ToJSONString() string {
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

func (o *AdminGetAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetAchievementNotFound creates a AdminGetAchievementNotFound with default headers values
func NewAdminGetAchievementNotFound() *AdminGetAchievementNotFound {
	return &AdminGetAchievementNotFound{}
}

/*AdminGetAchievementNotFound handles this case with default header values.

  Not Found
*/
type AdminGetAchievementNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminGetAchievementNotFound) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminGetAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetAchievementNotFound) ToJSONString() string {
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

func (o *AdminGetAchievementNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetAchievementInternalServerError creates a AdminGetAchievementInternalServerError with default headers values
func NewAdminGetAchievementInternalServerError() *AdminGetAchievementInternalServerError {
	return &AdminGetAchievementInternalServerError{}
}

/*AdminGetAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminGetAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminGetAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAchievementInternalServerError) ToJSONString() string {
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

func (o *AdminGetAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
