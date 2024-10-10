// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package namespace

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

// PublicGetNamespacePublisherReader is a Reader for the PublicGetNamespacePublisher structure.
type PublicGetNamespacePublisherReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetNamespacePublisherReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetNamespacePublisherOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetNamespacePublisherBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetNamespacePublisherUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetNamespacePublisherForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetNamespacePublisherNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces/{namespace}/publisher returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetNamespacePublisherOK creates a PublicGetNamespacePublisherOK with default headers values
func NewPublicGetNamespacePublisherOK() *PublicGetNamespacePublisherOK {
	return &PublicGetNamespacePublisherOK{}
}

/*PublicGetNamespacePublisherOK handles this case with default header values.

  Successful operation
*/
type PublicGetNamespacePublisherOK struct {
	Payload *basicclientmodels.NamespacePublisherInfo
}

func (o *PublicGetNamespacePublisherOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/publisher][%d] publicGetNamespacePublisherOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetNamespacePublisherOK) ToJSONString() string {
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

func (o *PublicGetNamespacePublisherOK) GetPayload() *basicclientmodels.NamespacePublisherInfo {
	return o.Payload
}

func (o *PublicGetNamespacePublisherOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.NamespacePublisherInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetNamespacePublisherBadRequest creates a PublicGetNamespacePublisherBadRequest with default headers values
func NewPublicGetNamespacePublisherBadRequest() *PublicGetNamespacePublisherBadRequest {
	return &PublicGetNamespacePublisherBadRequest{}
}

/*PublicGetNamespacePublisherBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetNamespacePublisherBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicGetNamespacePublisherBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/publisher][%d] publicGetNamespacePublisherBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetNamespacePublisherBadRequest) ToJSONString() string {
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

func (o *PublicGetNamespacePublisherBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicGetNamespacePublisherBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetNamespacePublisherUnauthorized creates a PublicGetNamespacePublisherUnauthorized with default headers values
func NewPublicGetNamespacePublisherUnauthorized() *PublicGetNamespacePublisherUnauthorized {
	return &PublicGetNamespacePublisherUnauthorized{}
}

/*PublicGetNamespacePublisherUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type PublicGetNamespacePublisherUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetNamespacePublisherUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/publisher][%d] publicGetNamespacePublisherUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetNamespacePublisherUnauthorized) ToJSONString() string {
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

func (o *PublicGetNamespacePublisherUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetNamespacePublisherUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetNamespacePublisherForbidden creates a PublicGetNamespacePublisherForbidden with default headers values
func NewPublicGetNamespacePublisherForbidden() *PublicGetNamespacePublisherForbidden {
	return &PublicGetNamespacePublisherForbidden{}
}

/*PublicGetNamespacePublisherForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetNamespacePublisherForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetNamespacePublisherForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/publisher][%d] publicGetNamespacePublisherForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetNamespacePublisherForbidden) ToJSONString() string {
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

func (o *PublicGetNamespacePublisherForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetNamespacePublisherForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetNamespacePublisherNotFound creates a PublicGetNamespacePublisherNotFound with default headers values
func NewPublicGetNamespacePublisherNotFound() *PublicGetNamespacePublisherNotFound {
	return &PublicGetNamespacePublisherNotFound{}
}

/*PublicGetNamespacePublisherNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11337</td><td>Unable to {action}: Namespace not found</td></tr></table>
*/
type PublicGetNamespacePublisherNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetNamespacePublisherNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/publisher][%d] publicGetNamespacePublisherNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetNamespacePublisherNotFound) ToJSONString() string {
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

func (o *PublicGetNamespacePublisherNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetNamespacePublisherNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
