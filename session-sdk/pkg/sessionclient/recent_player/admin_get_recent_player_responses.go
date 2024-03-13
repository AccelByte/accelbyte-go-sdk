// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package recent_player

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminGetRecentPlayerReader is a Reader for the AdminGetRecentPlayer structure.
type AdminGetRecentPlayerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetRecentPlayerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetRecentPlayerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetRecentPlayerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetRecentPlayerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetRecentPlayerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetRecentPlayerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/recent-player returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetRecentPlayerOK creates a AdminGetRecentPlayerOK with default headers values
func NewAdminGetRecentPlayerOK() *AdminGetRecentPlayerOK {
	return &AdminGetRecentPlayerOK{}
}

/*AdminGetRecentPlayerOK handles this case with default header values.

  OK
*/
type AdminGetRecentPlayerOK struct {
	Payload *sessionclientmodels.ModelsRecentPlayerQueryResponse
}

func (o *AdminGetRecentPlayerOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-player][%d] adminGetRecentPlayerOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetRecentPlayerOK) ToJSONString() string {
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

func (o *AdminGetRecentPlayerOK) GetPayload() *sessionclientmodels.ModelsRecentPlayerQueryResponse {
	return o.Payload
}

func (o *AdminGetRecentPlayerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ModelsRecentPlayerQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRecentPlayerBadRequest creates a AdminGetRecentPlayerBadRequest with default headers values
func NewAdminGetRecentPlayerBadRequest() *AdminGetRecentPlayerBadRequest {
	return &AdminGetRecentPlayerBadRequest{}
}

/*AdminGetRecentPlayerBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetRecentPlayerBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetRecentPlayerBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-player][%d] adminGetRecentPlayerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetRecentPlayerBadRequest) ToJSONString() string {
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

func (o *AdminGetRecentPlayerBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetRecentPlayerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRecentPlayerUnauthorized creates a AdminGetRecentPlayerUnauthorized with default headers values
func NewAdminGetRecentPlayerUnauthorized() *AdminGetRecentPlayerUnauthorized {
	return &AdminGetRecentPlayerUnauthorized{}
}

/*AdminGetRecentPlayerUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetRecentPlayerUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetRecentPlayerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-player][%d] adminGetRecentPlayerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetRecentPlayerUnauthorized) ToJSONString() string {
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

func (o *AdminGetRecentPlayerUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetRecentPlayerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRecentPlayerNotFound creates a AdminGetRecentPlayerNotFound with default headers values
func NewAdminGetRecentPlayerNotFound() *AdminGetRecentPlayerNotFound {
	return &AdminGetRecentPlayerNotFound{}
}

/*AdminGetRecentPlayerNotFound handles this case with default header values.

  Not Found
*/
type AdminGetRecentPlayerNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetRecentPlayerNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-player][%d] adminGetRecentPlayerNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetRecentPlayerNotFound) ToJSONString() string {
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

func (o *AdminGetRecentPlayerNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetRecentPlayerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRecentPlayerInternalServerError creates a AdminGetRecentPlayerInternalServerError with default headers values
func NewAdminGetRecentPlayerInternalServerError() *AdminGetRecentPlayerInternalServerError {
	return &AdminGetRecentPlayerInternalServerError{}
}

/*AdminGetRecentPlayerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetRecentPlayerInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetRecentPlayerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-player][%d] adminGetRecentPlayerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetRecentPlayerInternalServerError) ToJSONString() string {
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

func (o *AdminGetRecentPlayerInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetRecentPlayerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
