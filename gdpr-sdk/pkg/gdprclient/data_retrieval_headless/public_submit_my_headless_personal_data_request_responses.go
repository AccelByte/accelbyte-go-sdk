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

// PublicSubmitMyHeadlessPersonalDataRequestReader is a Reader for the PublicSubmitMyHeadlessPersonalDataRequest structure.
type PublicSubmitMyHeadlessPersonalDataRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSubmitMyHeadlessPersonalDataRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicSubmitMyHeadlessPersonalDataRequestCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSubmitMyHeadlessPersonalDataRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSubmitMyHeadlessPersonalDataRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSubmitMyHeadlessPersonalDataRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicSubmitMyHeadlessPersonalDataRequestTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicSubmitMyHeadlessPersonalDataRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/public/users/me/headless/requests returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSubmitMyHeadlessPersonalDataRequestCreated creates a PublicSubmitMyHeadlessPersonalDataRequestCreated with default headers values
func NewPublicSubmitMyHeadlessPersonalDataRequestCreated() *PublicSubmitMyHeadlessPersonalDataRequestCreated {
	return &PublicSubmitMyHeadlessPersonalDataRequestCreated{}
}

/*PublicSubmitMyHeadlessPersonalDataRequestCreated handles this case with default header values.

  Created
*/
type PublicSubmitMyHeadlessPersonalDataRequestCreated struct {
	Payload *gdprclientmodels.ModelsDataRetrievalResponse
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests][%d] publicSubmitMyHeadlessPersonalDataRequestCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestCreated) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessPersonalDataRequestCreated) GetPayload() *gdprclientmodels.ModelsDataRetrievalResponse {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyHeadlessPersonalDataRequestBadRequest creates a PublicSubmitMyHeadlessPersonalDataRequestBadRequest with default headers values
func NewPublicSubmitMyHeadlessPersonalDataRequestBadRequest() *PublicSubmitMyHeadlessPersonalDataRequestBadRequest {
	return &PublicSubmitMyHeadlessPersonalDataRequestBadRequest{}
}

/*PublicSubmitMyHeadlessPersonalDataRequestBadRequest handles this case with default header values.

  Bad Request
*/
type PublicSubmitMyHeadlessPersonalDataRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests][%d] publicSubmitMyHeadlessPersonalDataRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestBadRequest) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessPersonalDataRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyHeadlessPersonalDataRequestUnauthorized creates a PublicSubmitMyHeadlessPersonalDataRequestUnauthorized with default headers values
func NewPublicSubmitMyHeadlessPersonalDataRequestUnauthorized() *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized {
	return &PublicSubmitMyHeadlessPersonalDataRequestUnauthorized{}
}

/*PublicSubmitMyHeadlessPersonalDataRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicSubmitMyHeadlessPersonalDataRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests][%d] publicSubmitMyHeadlessPersonalDataRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyHeadlessPersonalDataRequestForbidden creates a PublicSubmitMyHeadlessPersonalDataRequestForbidden with default headers values
func NewPublicSubmitMyHeadlessPersonalDataRequestForbidden() *PublicSubmitMyHeadlessPersonalDataRequestForbidden {
	return &PublicSubmitMyHeadlessPersonalDataRequestForbidden{}
}

/*PublicSubmitMyHeadlessPersonalDataRequestForbidden handles this case with default header values.

  Forbidden
*/
type PublicSubmitMyHeadlessPersonalDataRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests][%d] publicSubmitMyHeadlessPersonalDataRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestForbidden) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessPersonalDataRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyHeadlessPersonalDataRequestTooManyRequests creates a PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests with default headers values
func NewPublicSubmitMyHeadlessPersonalDataRequestTooManyRequests() *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests {
	return &PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests{}
}

/*PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests handles this case with default header values.

  Too Many Requests
*/
type PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests][%d] publicSubmitMyHeadlessPersonalDataRequestTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyHeadlessPersonalDataRequestInternalServerError creates a PublicSubmitMyHeadlessPersonalDataRequestInternalServerError with default headers values
func NewPublicSubmitMyHeadlessPersonalDataRequestInternalServerError() *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError {
	return &PublicSubmitMyHeadlessPersonalDataRequestInternalServerError{}
}

/*PublicSubmitMyHeadlessPersonalDataRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicSubmitMyHeadlessPersonalDataRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests][%d] publicSubmitMyHeadlessPersonalDataRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
