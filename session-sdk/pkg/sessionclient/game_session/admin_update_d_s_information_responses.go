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

// AdminUpdateDSInformationReader is a Reader for the AdminUpdateDSInformation structure.
type AdminUpdateDSInformationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateDSInformationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateDSInformationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateDSInformationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateDSInformationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateDSInformationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateDSInformationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateDSInformationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateDSInformationNoContent creates a AdminUpdateDSInformationNoContent with default headers values
func NewAdminUpdateDSInformationNoContent() *AdminUpdateDSInformationNoContent {
	return &AdminUpdateDSInformationNoContent{}
}

/*AdminUpdateDSInformationNoContent handles this case with default header values.

  No Content
*/
type AdminUpdateDSInformationNoContent struct {
}

func (o *AdminUpdateDSInformationNoContent) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation][%d] adminUpdateDSInformationNoContent ", 204)
}

func (o *AdminUpdateDSInformationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateDSInformationBadRequest creates a AdminUpdateDSInformationBadRequest with default headers values
func NewAdminUpdateDSInformationBadRequest() *AdminUpdateDSInformationBadRequest {
	return &AdminUpdateDSInformationBadRequest{}
}

/*AdminUpdateDSInformationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateDSInformationBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateDSInformationBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation][%d] adminUpdateDSInformationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateDSInformationBadRequest) ToJSONString() string {
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

func (o *AdminUpdateDSInformationBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateDSInformationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateDSInformationUnauthorized creates a AdminUpdateDSInformationUnauthorized with default headers values
func NewAdminUpdateDSInformationUnauthorized() *AdminUpdateDSInformationUnauthorized {
	return &AdminUpdateDSInformationUnauthorized{}
}

/*AdminUpdateDSInformationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateDSInformationUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateDSInformationUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation][%d] adminUpdateDSInformationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateDSInformationUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateDSInformationUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateDSInformationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateDSInformationForbidden creates a AdminUpdateDSInformationForbidden with default headers values
func NewAdminUpdateDSInformationForbidden() *AdminUpdateDSInformationForbidden {
	return &AdminUpdateDSInformationForbidden{}
}

/*AdminUpdateDSInformationForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateDSInformationForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateDSInformationForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation][%d] adminUpdateDSInformationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateDSInformationForbidden) ToJSONString() string {
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

func (o *AdminUpdateDSInformationForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateDSInformationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateDSInformationNotFound creates a AdminUpdateDSInformationNotFound with default headers values
func NewAdminUpdateDSInformationNotFound() *AdminUpdateDSInformationNotFound {
	return &AdminUpdateDSInformationNotFound{}
}

/*AdminUpdateDSInformationNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateDSInformationNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateDSInformationNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation][%d] adminUpdateDSInformationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateDSInformationNotFound) ToJSONString() string {
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

func (o *AdminUpdateDSInformationNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateDSInformationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateDSInformationInternalServerError creates a AdminUpdateDSInformationInternalServerError with default headers values
func NewAdminUpdateDSInformationInternalServerError() *AdminUpdateDSInformationInternalServerError {
	return &AdminUpdateDSInformationInternalServerError{}
}

/*AdminUpdateDSInformationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateDSInformationInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateDSInformationInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation][%d] adminUpdateDSInformationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateDSInformationInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateDSInformationInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateDSInformationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
