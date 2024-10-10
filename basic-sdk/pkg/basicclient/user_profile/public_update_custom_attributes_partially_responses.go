// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// PublicUpdateCustomAttributesPartiallyReader is a Reader for the PublicUpdateCustomAttributesPartially structure.
type PublicUpdateCustomAttributesPartiallyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateCustomAttributesPartiallyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateCustomAttributesPartiallyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateCustomAttributesPartiallyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateCustomAttributesPartiallyUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateCustomAttributesPartiallyForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateCustomAttributesPartiallyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateCustomAttributesPartiallyOK creates a PublicUpdateCustomAttributesPartiallyOK with default headers values
func NewPublicUpdateCustomAttributesPartiallyOK() *PublicUpdateCustomAttributesPartiallyOK {
	return &PublicUpdateCustomAttributesPartiallyOK{}
}

/*PublicUpdateCustomAttributesPartiallyOK handles this case with default header values.

  Successful operation
*/
type PublicUpdateCustomAttributesPartiallyOK struct {
	Payload map[string]interface{}
}

func (o *PublicUpdateCustomAttributesPartiallyOK) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] publicUpdateCustomAttributesPartiallyOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateCustomAttributesPartiallyOK) ToJSONString() string {
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

func (o *PublicUpdateCustomAttributesPartiallyOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicUpdateCustomAttributesPartiallyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateCustomAttributesPartiallyBadRequest creates a PublicUpdateCustomAttributesPartiallyBadRequest with default headers values
func NewPublicUpdateCustomAttributesPartiallyBadRequest() *PublicUpdateCustomAttributesPartiallyBadRequest {
	return &PublicUpdateCustomAttributesPartiallyBadRequest{}
}

/*PublicUpdateCustomAttributesPartiallyBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicUpdateCustomAttributesPartiallyBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicUpdateCustomAttributesPartiallyBadRequest) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] publicUpdateCustomAttributesPartiallyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateCustomAttributesPartiallyBadRequest) ToJSONString() string {
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

func (o *PublicUpdateCustomAttributesPartiallyBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicUpdateCustomAttributesPartiallyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateCustomAttributesPartiallyUnauthorized creates a PublicUpdateCustomAttributesPartiallyUnauthorized with default headers values
func NewPublicUpdateCustomAttributesPartiallyUnauthorized() *PublicUpdateCustomAttributesPartiallyUnauthorized {
	return &PublicUpdateCustomAttributesPartiallyUnauthorized{}
}

/*PublicUpdateCustomAttributesPartiallyUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type PublicUpdateCustomAttributesPartiallyUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicUpdateCustomAttributesPartiallyUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] publicUpdateCustomAttributesPartiallyUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateCustomAttributesPartiallyUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateCustomAttributesPartiallyUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateCustomAttributesPartiallyUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateCustomAttributesPartiallyForbidden creates a PublicUpdateCustomAttributesPartiallyForbidden with default headers values
func NewPublicUpdateCustomAttributesPartiallyForbidden() *PublicUpdateCustomAttributesPartiallyForbidden {
	return &PublicUpdateCustomAttributesPartiallyForbidden{}
}

/*PublicUpdateCustomAttributesPartiallyForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicUpdateCustomAttributesPartiallyForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicUpdateCustomAttributesPartiallyForbidden) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] publicUpdateCustomAttributesPartiallyForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateCustomAttributesPartiallyForbidden) ToJSONString() string {
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

func (o *PublicUpdateCustomAttributesPartiallyForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateCustomAttributesPartiallyForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateCustomAttributesPartiallyNotFound creates a PublicUpdateCustomAttributesPartiallyNotFound with default headers values
func NewPublicUpdateCustomAttributesPartiallyNotFound() *PublicUpdateCustomAttributesPartiallyNotFound {
	return &PublicUpdateCustomAttributesPartiallyNotFound{}
}

/*PublicUpdateCustomAttributesPartiallyNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type PublicUpdateCustomAttributesPartiallyNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicUpdateCustomAttributesPartiallyNotFound) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] publicUpdateCustomAttributesPartiallyNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateCustomAttributesPartiallyNotFound) ToJSONString() string {
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

func (o *PublicUpdateCustomAttributesPartiallyNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateCustomAttributesPartiallyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
