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

// PublicQueryMyPartiesReader is a Reader for the PublicQueryMyParties structure.
type PublicQueryMyPartiesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicQueryMyPartiesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicQueryMyPartiesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicQueryMyPartiesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicQueryMyPartiesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicQueryMyPartiesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/users/me/parties returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicQueryMyPartiesOK creates a PublicQueryMyPartiesOK with default headers values
func NewPublicQueryMyPartiesOK() *PublicQueryMyPartiesOK {
	return &PublicQueryMyPartiesOK{}
}

/*PublicQueryMyPartiesOK handles this case with default header values.

  OK
*/
type PublicQueryMyPartiesOK struct {
	Payload *sessionclientmodels.ApimodelsPartyQueryResponse
}

func (o *PublicQueryMyPartiesOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/parties][%d] publicQueryMyPartiesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicQueryMyPartiesOK) ToJSONString() string {
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

func (o *PublicQueryMyPartiesOK) GetPayload() *sessionclientmodels.ApimodelsPartyQueryResponse {
	return o.Payload
}

func (o *PublicQueryMyPartiesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryMyPartiesBadRequest creates a PublicQueryMyPartiesBadRequest with default headers values
func NewPublicQueryMyPartiesBadRequest() *PublicQueryMyPartiesBadRequest {
	return &PublicQueryMyPartiesBadRequest{}
}

/*PublicQueryMyPartiesBadRequest handles this case with default header values.

  Bad Request
*/
type PublicQueryMyPartiesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryMyPartiesBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/parties][%d] publicQueryMyPartiesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicQueryMyPartiesBadRequest) ToJSONString() string {
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

func (o *PublicQueryMyPartiesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryMyPartiesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryMyPartiesUnauthorized creates a PublicQueryMyPartiesUnauthorized with default headers values
func NewPublicQueryMyPartiesUnauthorized() *PublicQueryMyPartiesUnauthorized {
	return &PublicQueryMyPartiesUnauthorized{}
}

/*PublicQueryMyPartiesUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicQueryMyPartiesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryMyPartiesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/parties][%d] publicQueryMyPartiesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicQueryMyPartiesUnauthorized) ToJSONString() string {
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

func (o *PublicQueryMyPartiesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryMyPartiesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryMyPartiesInternalServerError creates a PublicQueryMyPartiesInternalServerError with default headers values
func NewPublicQueryMyPartiesInternalServerError() *PublicQueryMyPartiesInternalServerError {
	return &PublicQueryMyPartiesInternalServerError{}
}

/*PublicQueryMyPartiesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicQueryMyPartiesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryMyPartiesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/parties][%d] publicQueryMyPartiesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicQueryMyPartiesInternalServerError) ToJSONString() string {
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

func (o *PublicQueryMyPartiesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryMyPartiesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
