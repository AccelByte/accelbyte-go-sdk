// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// AdminQueryPartiesReader is a Reader for the AdminQueryParties structure.
type AdminQueryPartiesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryPartiesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryPartiesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryPartiesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryPartiesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryPartiesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/parties returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryPartiesOK creates a AdminQueryPartiesOK with default headers values
func NewAdminQueryPartiesOK() *AdminQueryPartiesOK {
	return &AdminQueryPartiesOK{}
}

/*AdminQueryPartiesOK handles this case with default header values.

  OK
*/
type AdminQueryPartiesOK struct {
	Payload *sessionclientmodels.ApimodelsPartyQueryResponse
}

func (o *AdminQueryPartiesOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/parties][%d] adminQueryPartiesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryPartiesOK) ToJSONString() string {
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

func (o *AdminQueryPartiesOK) GetPayload() *sessionclientmodels.ApimodelsPartyQueryResponse {
	return o.Payload
}

func (o *AdminQueryPartiesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsPartyQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryPartiesBadRequest creates a AdminQueryPartiesBadRequest with default headers values
func NewAdminQueryPartiesBadRequest() *AdminQueryPartiesBadRequest {
	return &AdminQueryPartiesBadRequest{}
}

/*AdminQueryPartiesBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryPartiesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryPartiesBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/parties][%d] adminQueryPartiesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryPartiesBadRequest) ToJSONString() string {
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

func (o *AdminQueryPartiesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPartiesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryPartiesUnauthorized creates a AdminQueryPartiesUnauthorized with default headers values
func NewAdminQueryPartiesUnauthorized() *AdminQueryPartiesUnauthorized {
	return &AdminQueryPartiesUnauthorized{}
}

/*AdminQueryPartiesUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryPartiesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryPartiesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/parties][%d] adminQueryPartiesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryPartiesUnauthorized) ToJSONString() string {
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

func (o *AdminQueryPartiesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPartiesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryPartiesInternalServerError creates a AdminQueryPartiesInternalServerError with default headers values
func NewAdminQueryPartiesInternalServerError() *AdminQueryPartiesInternalServerError {
	return &AdminQueryPartiesInternalServerError{}
}

/*AdminQueryPartiesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryPartiesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryPartiesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/parties][%d] adminQueryPartiesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryPartiesInternalServerError) ToJSONString() string {
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

func (o *AdminQueryPartiesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPartiesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
