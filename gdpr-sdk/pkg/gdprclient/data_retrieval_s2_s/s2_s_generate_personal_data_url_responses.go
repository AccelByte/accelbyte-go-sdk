// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_s2_s

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// S2SGeneratePersonalDataURLReader is a Reader for the S2SGeneratePersonalDataURL structure.
type S2SGeneratePersonalDataURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *S2SGeneratePersonalDataURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewS2SGeneratePersonalDataURLOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewS2SGeneratePersonalDataURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewS2SGeneratePersonalDataURLUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewS2SGeneratePersonalDataURLNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewS2SGeneratePersonalDataURLInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewS2SGeneratePersonalDataURLOK creates a S2SGeneratePersonalDataURLOK with default headers values
func NewS2SGeneratePersonalDataURLOK() *S2SGeneratePersonalDataURLOK {
	return &S2SGeneratePersonalDataURLOK{}
}

/*S2SGeneratePersonalDataURLOK handles this case with default header values.

  OK
*/
type S2SGeneratePersonalDataURLOK struct {
	Payload *gdprclientmodels.ModelsS2SUserDataURL
}

func (o *S2SGeneratePersonalDataURLOK) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] s2SGeneratePersonalDataUrlOK  %+v", 200, o.ToJSONString())
}

func (o *S2SGeneratePersonalDataURLOK) ToJSONString() string {
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

func (o *S2SGeneratePersonalDataURLOK) GetPayload() *gdprclientmodels.ModelsS2SUserDataURL {
	return o.Payload
}

func (o *S2SGeneratePersonalDataURLOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsS2SUserDataURL)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGeneratePersonalDataURLBadRequest creates a S2SGeneratePersonalDataURLBadRequest with default headers values
func NewS2SGeneratePersonalDataURLBadRequest() *S2SGeneratePersonalDataURLBadRequest {
	return &S2SGeneratePersonalDataURLBadRequest{}
}

/*S2SGeneratePersonalDataURLBadRequest handles this case with default header values.

  Bad Request
*/
type S2SGeneratePersonalDataURLBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGeneratePersonalDataURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] s2SGeneratePersonalDataUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *S2SGeneratePersonalDataURLBadRequest) ToJSONString() string {
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

func (o *S2SGeneratePersonalDataURLBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGeneratePersonalDataURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGeneratePersonalDataURLUnauthorized creates a S2SGeneratePersonalDataURLUnauthorized with default headers values
func NewS2SGeneratePersonalDataURLUnauthorized() *S2SGeneratePersonalDataURLUnauthorized {
	return &S2SGeneratePersonalDataURLUnauthorized{}
}

/*S2SGeneratePersonalDataURLUnauthorized handles this case with default header values.

  Unauthorized
*/
type S2SGeneratePersonalDataURLUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGeneratePersonalDataURLUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] s2SGeneratePersonalDataUrlUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *S2SGeneratePersonalDataURLUnauthorized) ToJSONString() string {
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

func (o *S2SGeneratePersonalDataURLUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGeneratePersonalDataURLUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGeneratePersonalDataURLNotFound creates a S2SGeneratePersonalDataURLNotFound with default headers values
func NewS2SGeneratePersonalDataURLNotFound() *S2SGeneratePersonalDataURLNotFound {
	return &S2SGeneratePersonalDataURLNotFound{}
}

/*S2SGeneratePersonalDataURLNotFound handles this case with default header values.

  Not Found
*/
type S2SGeneratePersonalDataURLNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGeneratePersonalDataURLNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] s2SGeneratePersonalDataUrlNotFound  %+v", 404, o.ToJSONString())
}

func (o *S2SGeneratePersonalDataURLNotFound) ToJSONString() string {
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

func (o *S2SGeneratePersonalDataURLNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGeneratePersonalDataURLNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGeneratePersonalDataURLInternalServerError creates a S2SGeneratePersonalDataURLInternalServerError with default headers values
func NewS2SGeneratePersonalDataURLInternalServerError() *S2SGeneratePersonalDataURLInternalServerError {
	return &S2SGeneratePersonalDataURLInternalServerError{}
}

/*S2SGeneratePersonalDataURLInternalServerError handles this case with default header values.

  Internal Server Error
*/
type S2SGeneratePersonalDataURLInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGeneratePersonalDataURLInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] s2SGeneratePersonalDataUrlInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *S2SGeneratePersonalDataURLInternalServerError) ToJSONString() string {
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

func (o *S2SGeneratePersonalDataURLInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGeneratePersonalDataURLInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
