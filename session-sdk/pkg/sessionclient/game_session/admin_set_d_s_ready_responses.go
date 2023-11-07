// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

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

// AdminSetDSReadyReader is a Reader for the AdminSetDSReady structure.
type AdminSetDSReadyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSetDSReadyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminSetDSReadyNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSetDSReadyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSetDSReadyUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSetDSReadyForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSetDSReadyInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSetDSReadyNoContent creates a AdminSetDSReadyNoContent with default headers values
func NewAdminSetDSReadyNoContent() *AdminSetDSReadyNoContent {
	return &AdminSetDSReadyNoContent{}
}

/*AdminSetDSReadyNoContent handles this case with default header values.

  OK
*/
type AdminSetDSReadyNoContent struct {
}

func (o *AdminSetDSReadyNoContent) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds][%d] adminSetDSReadyNoContent ", 204)
}

func (o *AdminSetDSReadyNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminSetDSReadyBadRequest creates a AdminSetDSReadyBadRequest with default headers values
func NewAdminSetDSReadyBadRequest() *AdminSetDSReadyBadRequest {
	return &AdminSetDSReadyBadRequest{}
}

/*AdminSetDSReadyBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSetDSReadyBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSetDSReadyBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds][%d] adminSetDSReadyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSetDSReadyBadRequest) ToJSONString() string {
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

func (o *AdminSetDSReadyBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSetDSReadyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSetDSReadyUnauthorized creates a AdminSetDSReadyUnauthorized with default headers values
func NewAdminSetDSReadyUnauthorized() *AdminSetDSReadyUnauthorized {
	return &AdminSetDSReadyUnauthorized{}
}

/*AdminSetDSReadyUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSetDSReadyUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSetDSReadyUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds][%d] adminSetDSReadyUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSetDSReadyUnauthorized) ToJSONString() string {
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

func (o *AdminSetDSReadyUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSetDSReadyUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSetDSReadyForbidden creates a AdminSetDSReadyForbidden with default headers values
func NewAdminSetDSReadyForbidden() *AdminSetDSReadyForbidden {
	return &AdminSetDSReadyForbidden{}
}

/*AdminSetDSReadyForbidden handles this case with default header values.

  Forbidden
*/
type AdminSetDSReadyForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSetDSReadyForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds][%d] adminSetDSReadyForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSetDSReadyForbidden) ToJSONString() string {
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

func (o *AdminSetDSReadyForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSetDSReadyForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSetDSReadyInternalServerError creates a AdminSetDSReadyInternalServerError with default headers values
func NewAdminSetDSReadyInternalServerError() *AdminSetDSReadyInternalServerError {
	return &AdminSetDSReadyInternalServerError{}
}

/*AdminSetDSReadyInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSetDSReadyInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSetDSReadyInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds][%d] adminSetDSReadyInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSetDSReadyInternalServerError) ToJSONString() string {
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

func (o *AdminSetDSReadyInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSetDSReadyInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
