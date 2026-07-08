// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_headless

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

// PublicGetMyPersonalDataRequestsReader is a Reader for the PublicGetMyPersonalDataRequests structure.
type PublicGetMyPersonalDataRequestsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyPersonalDataRequestsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyPersonalDataRequestsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetMyPersonalDataRequestsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetMyPersonalDataRequestsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetMyPersonalDataRequestsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/public/users/me/requests returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyPersonalDataRequestsOK creates a PublicGetMyPersonalDataRequestsOK with default headers values
func NewPublicGetMyPersonalDataRequestsOK() *PublicGetMyPersonalDataRequestsOK {
	return &PublicGetMyPersonalDataRequestsOK{}
}

/*PublicGetMyPersonalDataRequestsOK handles this case with default header values.

  OK
*/
type PublicGetMyPersonalDataRequestsOK struct {
	Payload *gdprclientmodels.ModelsUserPersonalDataResponse
}

func (o *PublicGetMyPersonalDataRequestsOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/users/me/requests][%d] publicGetMyPersonalDataRequestsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMyPersonalDataRequestsOK) ToJSONString() string {
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

func (o *PublicGetMyPersonalDataRequestsOK) GetPayload() *gdprclientmodels.ModelsUserPersonalDataResponse {
	return o.Payload
}

func (o *PublicGetMyPersonalDataRequestsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsUserPersonalDataResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMyPersonalDataRequestsUnauthorized creates a PublicGetMyPersonalDataRequestsUnauthorized with default headers values
func NewPublicGetMyPersonalDataRequestsUnauthorized() *PublicGetMyPersonalDataRequestsUnauthorized {
	return &PublicGetMyPersonalDataRequestsUnauthorized{}
}

/*PublicGetMyPersonalDataRequestsUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetMyPersonalDataRequestsUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetMyPersonalDataRequestsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/users/me/requests][%d] publicGetMyPersonalDataRequestsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetMyPersonalDataRequestsUnauthorized) ToJSONString() string {
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

func (o *PublicGetMyPersonalDataRequestsUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetMyPersonalDataRequestsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetMyPersonalDataRequestsForbidden creates a PublicGetMyPersonalDataRequestsForbidden with default headers values
func NewPublicGetMyPersonalDataRequestsForbidden() *PublicGetMyPersonalDataRequestsForbidden {
	return &PublicGetMyPersonalDataRequestsForbidden{}
}

/*PublicGetMyPersonalDataRequestsForbidden handles this case with default header values.

  Forbidden
*/
type PublicGetMyPersonalDataRequestsForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetMyPersonalDataRequestsForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/users/me/requests][%d] publicGetMyPersonalDataRequestsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetMyPersonalDataRequestsForbidden) ToJSONString() string {
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

func (o *PublicGetMyPersonalDataRequestsForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetMyPersonalDataRequestsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetMyPersonalDataRequestsInternalServerError creates a PublicGetMyPersonalDataRequestsInternalServerError with default headers values
func NewPublicGetMyPersonalDataRequestsInternalServerError() *PublicGetMyPersonalDataRequestsInternalServerError {
	return &PublicGetMyPersonalDataRequestsInternalServerError{}
}

/*PublicGetMyPersonalDataRequestsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetMyPersonalDataRequestsInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetMyPersonalDataRequestsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/users/me/requests][%d] publicGetMyPersonalDataRequestsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetMyPersonalDataRequestsInternalServerError) ToJSONString() string {
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

func (o *PublicGetMyPersonalDataRequestsInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetMyPersonalDataRequestsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
