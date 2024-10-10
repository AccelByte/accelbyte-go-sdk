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

// AdminQueryGameSessionsByAttributesReader is a Reader for the AdminQueryGameSessionsByAttributes structure.
type AdminQueryGameSessionsByAttributesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryGameSessionsByAttributesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryGameSessionsByAttributesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryGameSessionsByAttributesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryGameSessionsByAttributesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryGameSessionsByAttributesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryGameSessionsByAttributesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/admin/namespaces/{namespace}/gamesessions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryGameSessionsByAttributesOK creates a AdminQueryGameSessionsByAttributesOK with default headers values
func NewAdminQueryGameSessionsByAttributesOK() *AdminQueryGameSessionsByAttributesOK {
	return &AdminQueryGameSessionsByAttributesOK{}
}

/*AdminQueryGameSessionsByAttributesOK handles this case with default header values.

  OK
*/
type AdminQueryGameSessionsByAttributesOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionQueryResponse
}

func (o *AdminQueryGameSessionsByAttributesOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsByAttributesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryGameSessionsByAttributesOK) ToJSONString() string {
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

func (o *AdminQueryGameSessionsByAttributesOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionQueryResponse {
	return o.Payload
}

func (o *AdminQueryGameSessionsByAttributesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsGameSessionQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryGameSessionsByAttributesBadRequest creates a AdminQueryGameSessionsByAttributesBadRequest with default headers values
func NewAdminQueryGameSessionsByAttributesBadRequest() *AdminQueryGameSessionsByAttributesBadRequest {
	return &AdminQueryGameSessionsByAttributesBadRequest{}
}

/*AdminQueryGameSessionsByAttributesBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryGameSessionsByAttributesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryGameSessionsByAttributesBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsByAttributesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryGameSessionsByAttributesBadRequest) ToJSONString() string {
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

func (o *AdminQueryGameSessionsByAttributesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionsByAttributesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryGameSessionsByAttributesUnauthorized creates a AdminQueryGameSessionsByAttributesUnauthorized with default headers values
func NewAdminQueryGameSessionsByAttributesUnauthorized() *AdminQueryGameSessionsByAttributesUnauthorized {
	return &AdminQueryGameSessionsByAttributesUnauthorized{}
}

/*AdminQueryGameSessionsByAttributesUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryGameSessionsByAttributesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryGameSessionsByAttributesUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsByAttributesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryGameSessionsByAttributesUnauthorized) ToJSONString() string {
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

func (o *AdminQueryGameSessionsByAttributesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionsByAttributesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryGameSessionsByAttributesForbidden creates a AdminQueryGameSessionsByAttributesForbidden with default headers values
func NewAdminQueryGameSessionsByAttributesForbidden() *AdminQueryGameSessionsByAttributesForbidden {
	return &AdminQueryGameSessionsByAttributesForbidden{}
}

/*AdminQueryGameSessionsByAttributesForbidden handles this case with default header values.

  Forbidden
*/
type AdminQueryGameSessionsByAttributesForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryGameSessionsByAttributesForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsByAttributesForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryGameSessionsByAttributesForbidden) ToJSONString() string {
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

func (o *AdminQueryGameSessionsByAttributesForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionsByAttributesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryGameSessionsByAttributesInternalServerError creates a AdminQueryGameSessionsByAttributesInternalServerError with default headers values
func NewAdminQueryGameSessionsByAttributesInternalServerError() *AdminQueryGameSessionsByAttributesInternalServerError {
	return &AdminQueryGameSessionsByAttributesInternalServerError{}
}

/*AdminQueryGameSessionsByAttributesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryGameSessionsByAttributesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryGameSessionsByAttributesInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsByAttributesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryGameSessionsByAttributesInternalServerError) ToJSONString() string {
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

func (o *AdminQueryGameSessionsByAttributesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionsByAttributesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
