// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
)

// AdminGetPeriodsReader is a Reader for the AdminGetPeriods structure.
type AdminGetPeriodsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPeriodsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPeriodsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPeriodsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPeriodsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPeriodsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPeriodsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPeriodsOK creates a AdminGetPeriodsOK with default headers values
func NewAdminGetPeriodsOK() *AdminGetPeriodsOK {
	return &AdminGetPeriodsOK{}
}

/*AdminGetPeriodsOK handles this case with default header values.

  OK
*/
type AdminGetPeriodsOK struct {
	Payload *challengeclientmodels.ModelListPeriodsResponse
}

func (o *AdminGetPeriodsOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods][%d] adminGetPeriodsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPeriodsOK) ToJSONString() string {
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

func (o *AdminGetPeriodsOK) GetPayload() *challengeclientmodels.ModelListPeriodsResponse {
	return o.Payload
}

func (o *AdminGetPeriodsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelListPeriodsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPeriodsUnauthorized creates a AdminGetPeriodsUnauthorized with default headers values
func NewAdminGetPeriodsUnauthorized() *AdminGetPeriodsUnauthorized {
	return &AdminGetPeriodsUnauthorized{}
}

/*AdminGetPeriodsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetPeriodsUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetPeriodsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods][%d] adminGetPeriodsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPeriodsUnauthorized) ToJSONString() string {
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

func (o *AdminGetPeriodsUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetPeriodsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.IamErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPeriodsForbidden creates a AdminGetPeriodsForbidden with default headers values
func NewAdminGetPeriodsForbidden() *AdminGetPeriodsForbidden {
	return &AdminGetPeriodsForbidden{}
}

/*AdminGetPeriodsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetPeriodsForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetPeriodsForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods][%d] adminGetPeriodsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPeriodsForbidden) ToJSONString() string {
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

func (o *AdminGetPeriodsForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetPeriodsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.IamErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPeriodsNotFound creates a AdminGetPeriodsNotFound with default headers values
func NewAdminGetPeriodsNotFound() *AdminGetPeriodsNotFound {
	return &AdminGetPeriodsNotFound{}
}

/*AdminGetPeriodsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminGetPeriodsNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetPeriodsNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods][%d] adminGetPeriodsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPeriodsNotFound) ToJSONString() string {
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

func (o *AdminGetPeriodsNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPeriodsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPeriodsInternalServerError creates a AdminGetPeriodsInternalServerError with default headers values
func NewAdminGetPeriodsInternalServerError() *AdminGetPeriodsInternalServerError {
	return &AdminGetPeriodsInternalServerError{}
}

/*AdminGetPeriodsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminGetPeriodsInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetPeriodsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods][%d] adminGetPeriodsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPeriodsInternalServerError) ToJSONString() string {
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

func (o *AdminGetPeriodsInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPeriodsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
