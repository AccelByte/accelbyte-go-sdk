// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// UpdateCountryAgeRestrictionReader is a Reader for the UpdateCountryAgeRestriction structure.
type UpdateCountryAgeRestrictionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateCountryAgeRestrictionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateCountryAgeRestrictionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateCountryAgeRestrictionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateCountryAgeRestrictionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateCountryAgeRestrictionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateCountryAgeRestrictionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v2/admin/namespaces/{namespace}/countries/{countryCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateCountryAgeRestrictionOK creates a UpdateCountryAgeRestrictionOK with default headers values
func NewUpdateCountryAgeRestrictionOK() *UpdateCountryAgeRestrictionOK {
	return &UpdateCountryAgeRestrictionOK{}
}

/*UpdateCountryAgeRestrictionOK handles this case with default header values.

  OK
*/
type UpdateCountryAgeRestrictionOK struct {
	Payload *iamclientmodels.ModelCountry
}

func (o *UpdateCountryAgeRestrictionOK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/countries/{countryCode}][%d] updateCountryAgeRestrictionOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateCountryAgeRestrictionOK) ToJSONString() string {
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

func (o *UpdateCountryAgeRestrictionOK) GetPayload() *iamclientmodels.ModelCountry {
	return o.Payload
}

func (o *UpdateCountryAgeRestrictionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelCountry)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateCountryAgeRestrictionBadRequest creates a UpdateCountryAgeRestrictionBadRequest with default headers values
func NewUpdateCountryAgeRestrictionBadRequest() *UpdateCountryAgeRestrictionBadRequest {
	return &UpdateCountryAgeRestrictionBadRequest{}
}

/*UpdateCountryAgeRestrictionBadRequest handles this case with default header values.

  Invalid request
*/
type UpdateCountryAgeRestrictionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateCountryAgeRestrictionBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/countries/{countryCode}][%d] updateCountryAgeRestrictionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateCountryAgeRestrictionBadRequest) ToJSONString() string {
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

func (o *UpdateCountryAgeRestrictionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateCountryAgeRestrictionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateCountryAgeRestrictionUnauthorized creates a UpdateCountryAgeRestrictionUnauthorized with default headers values
func NewUpdateCountryAgeRestrictionUnauthorized() *UpdateCountryAgeRestrictionUnauthorized {
	return &UpdateCountryAgeRestrictionUnauthorized{}
}

/*UpdateCountryAgeRestrictionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateCountryAgeRestrictionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateCountryAgeRestrictionUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/countries/{countryCode}][%d] updateCountryAgeRestrictionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateCountryAgeRestrictionUnauthorized) ToJSONString() string {
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

func (o *UpdateCountryAgeRestrictionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateCountryAgeRestrictionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateCountryAgeRestrictionForbidden creates a UpdateCountryAgeRestrictionForbidden with default headers values
func NewUpdateCountryAgeRestrictionForbidden() *UpdateCountryAgeRestrictionForbidden {
	return &UpdateCountryAgeRestrictionForbidden{}
}

/*UpdateCountryAgeRestrictionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateCountryAgeRestrictionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateCountryAgeRestrictionForbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/countries/{countryCode}][%d] updateCountryAgeRestrictionForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateCountryAgeRestrictionForbidden) ToJSONString() string {
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

func (o *UpdateCountryAgeRestrictionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateCountryAgeRestrictionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateCountryAgeRestrictionNotFound creates a UpdateCountryAgeRestrictionNotFound with default headers values
func NewUpdateCountryAgeRestrictionNotFound() *UpdateCountryAgeRestrictionNotFound {
	return &UpdateCountryAgeRestrictionNotFound{}
}

/*UpdateCountryAgeRestrictionNotFound handles this case with default header values.

  Data not found
*/
type UpdateCountryAgeRestrictionNotFound struct {
}

func (o *UpdateCountryAgeRestrictionNotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/countries/{countryCode}][%d] updateCountryAgeRestrictionNotFound ", 404)
}

func (o *UpdateCountryAgeRestrictionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
