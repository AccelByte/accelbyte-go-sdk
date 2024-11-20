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

// S2SGetDataRequestByRequestIDReader is a Reader for the S2SGetDataRequestByRequestID structure.
type S2SGetDataRequestByRequestIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *S2SGetDataRequestByRequestIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewS2SGetDataRequestByRequestIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewS2SGetDataRequestByRequestIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewS2SGetDataRequestByRequestIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewS2SGetDataRequestByRequestIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/s2s/namespaces/{namespace}/requests/{requestId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewS2SGetDataRequestByRequestIDOK creates a S2SGetDataRequestByRequestIDOK with default headers values
func NewS2SGetDataRequestByRequestIDOK() *S2SGetDataRequestByRequestIDOK {
	return &S2SGetDataRequestByRequestIDOK{}
}

/*S2SGetDataRequestByRequestIDOK handles this case with default header values.

  OK
*/
type S2SGetDataRequestByRequestIDOK struct {
	Payload *gdprclientmodels.DTOS2SDataRequestSummary
}

func (o *S2SGetDataRequestByRequestIDOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/requests/{requestId}][%d] s2SGetDataRequestByRequestIdOK  %+v", 200, o.ToJSONString())
}

func (o *S2SGetDataRequestByRequestIDOK) ToJSONString() string {
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

func (o *S2SGetDataRequestByRequestIDOK) GetPayload() *gdprclientmodels.DTOS2SDataRequestSummary {
	return o.Payload
}

func (o *S2SGetDataRequestByRequestIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.DTOS2SDataRequestSummary)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGetDataRequestByRequestIDUnauthorized creates a S2SGetDataRequestByRequestIDUnauthorized with default headers values
func NewS2SGetDataRequestByRequestIDUnauthorized() *S2SGetDataRequestByRequestIDUnauthorized {
	return &S2SGetDataRequestByRequestIDUnauthorized{}
}

/*S2SGetDataRequestByRequestIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type S2SGetDataRequestByRequestIDUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetDataRequestByRequestIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/requests/{requestId}][%d] s2SGetDataRequestByRequestIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *S2SGetDataRequestByRequestIDUnauthorized) ToJSONString() string {
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

func (o *S2SGetDataRequestByRequestIDUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetDataRequestByRequestIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewS2SGetDataRequestByRequestIDNotFound creates a S2SGetDataRequestByRequestIDNotFound with default headers values
func NewS2SGetDataRequestByRequestIDNotFound() *S2SGetDataRequestByRequestIDNotFound {
	return &S2SGetDataRequestByRequestIDNotFound{}
}

/*S2SGetDataRequestByRequestIDNotFound handles this case with default header values.

  Not Found
*/
type S2SGetDataRequestByRequestIDNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetDataRequestByRequestIDNotFound) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/requests/{requestId}][%d] s2SGetDataRequestByRequestIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *S2SGetDataRequestByRequestIDNotFound) ToJSONString() string {
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

func (o *S2SGetDataRequestByRequestIDNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetDataRequestByRequestIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewS2SGetDataRequestByRequestIDInternalServerError creates a S2SGetDataRequestByRequestIDInternalServerError with default headers values
func NewS2SGetDataRequestByRequestIDInternalServerError() *S2SGetDataRequestByRequestIDInternalServerError {
	return &S2SGetDataRequestByRequestIDInternalServerError{}
}

/*S2SGetDataRequestByRequestIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type S2SGetDataRequestByRequestIDInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetDataRequestByRequestIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/requests/{requestId}][%d] s2SGetDataRequestByRequestIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *S2SGetDataRequestByRequestIDInternalServerError) ToJSONString() string {
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

func (o *S2SGetDataRequestByRequestIDInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetDataRequestByRequestIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
