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

// PublicSubmitMyPersonalDataRequestReader is a Reader for the PublicSubmitMyPersonalDataRequest structure.
type PublicSubmitMyPersonalDataRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSubmitMyPersonalDataRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicSubmitMyPersonalDataRequestCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSubmitMyPersonalDataRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSubmitMyPersonalDataRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSubmitMyPersonalDataRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicSubmitMyPersonalDataRequestTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicSubmitMyPersonalDataRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/public/users/me/requests returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSubmitMyPersonalDataRequestCreated creates a PublicSubmitMyPersonalDataRequestCreated with default headers values
func NewPublicSubmitMyPersonalDataRequestCreated() *PublicSubmitMyPersonalDataRequestCreated {
	return &PublicSubmitMyPersonalDataRequestCreated{}
}

/*PublicSubmitMyPersonalDataRequestCreated handles this case with default header values.

  Created
*/
type PublicSubmitMyPersonalDataRequestCreated struct {
	Payload *gdprclientmodels.ModelsDataRetrievalResponse
}

func (o *PublicSubmitMyPersonalDataRequestCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/requests][%d] publicSubmitMyPersonalDataRequestCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicSubmitMyPersonalDataRequestCreated) ToJSONString() string {
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

func (o *PublicSubmitMyPersonalDataRequestCreated) GetPayload() *gdprclientmodels.ModelsDataRetrievalResponse {
	return o.Payload
}

func (o *PublicSubmitMyPersonalDataRequestCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsDataRetrievalResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSubmitMyPersonalDataRequestBadRequest creates a PublicSubmitMyPersonalDataRequestBadRequest with default headers values
func NewPublicSubmitMyPersonalDataRequestBadRequest() *PublicSubmitMyPersonalDataRequestBadRequest {
	return &PublicSubmitMyPersonalDataRequestBadRequest{}
}

/*PublicSubmitMyPersonalDataRequestBadRequest handles this case with default header values.

  Bad Request
*/
type PublicSubmitMyPersonalDataRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyPersonalDataRequestBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/requests][%d] publicSubmitMyPersonalDataRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSubmitMyPersonalDataRequestBadRequest) ToJSONString() string {
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

func (o *PublicSubmitMyPersonalDataRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyPersonalDataRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyPersonalDataRequestUnauthorized creates a PublicSubmitMyPersonalDataRequestUnauthorized with default headers values
func NewPublicSubmitMyPersonalDataRequestUnauthorized() *PublicSubmitMyPersonalDataRequestUnauthorized {
	return &PublicSubmitMyPersonalDataRequestUnauthorized{}
}

/*PublicSubmitMyPersonalDataRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicSubmitMyPersonalDataRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyPersonalDataRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/requests][%d] publicSubmitMyPersonalDataRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSubmitMyPersonalDataRequestUnauthorized) ToJSONString() string {
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

func (o *PublicSubmitMyPersonalDataRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyPersonalDataRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyPersonalDataRequestForbidden creates a PublicSubmitMyPersonalDataRequestForbidden with default headers values
func NewPublicSubmitMyPersonalDataRequestForbidden() *PublicSubmitMyPersonalDataRequestForbidden {
	return &PublicSubmitMyPersonalDataRequestForbidden{}
}

/*PublicSubmitMyPersonalDataRequestForbidden handles this case with default header values.

  Forbidden
*/
type PublicSubmitMyPersonalDataRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyPersonalDataRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/requests][%d] publicSubmitMyPersonalDataRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSubmitMyPersonalDataRequestForbidden) ToJSONString() string {
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

func (o *PublicSubmitMyPersonalDataRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyPersonalDataRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyPersonalDataRequestTooManyRequests creates a PublicSubmitMyPersonalDataRequestTooManyRequests with default headers values
func NewPublicSubmitMyPersonalDataRequestTooManyRequests() *PublicSubmitMyPersonalDataRequestTooManyRequests {
	return &PublicSubmitMyPersonalDataRequestTooManyRequests{}
}

/*PublicSubmitMyPersonalDataRequestTooManyRequests handles this case with default header values.

  Too Many Requests
*/
type PublicSubmitMyPersonalDataRequestTooManyRequests struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyPersonalDataRequestTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/requests][%d] publicSubmitMyPersonalDataRequestTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicSubmitMyPersonalDataRequestTooManyRequests) ToJSONString() string {
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

func (o *PublicSubmitMyPersonalDataRequestTooManyRequests) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyPersonalDataRequestTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyPersonalDataRequestInternalServerError creates a PublicSubmitMyPersonalDataRequestInternalServerError with default headers values
func NewPublicSubmitMyPersonalDataRequestInternalServerError() *PublicSubmitMyPersonalDataRequestInternalServerError {
	return &PublicSubmitMyPersonalDataRequestInternalServerError{}
}

/*PublicSubmitMyPersonalDataRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicSubmitMyPersonalDataRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyPersonalDataRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/requests][%d] publicSubmitMyPersonalDataRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicSubmitMyPersonalDataRequestInternalServerError) ToJSONString() string {
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

func (o *PublicSubmitMyPersonalDataRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyPersonalDataRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
