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

// PublicGetCustomAttributesInfoReader is a Reader for the PublicGetCustomAttributesInfo structure.
type PublicGetCustomAttributesInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetCustomAttributesInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetCustomAttributesInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetCustomAttributesInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetCustomAttributesInfoOK creates a PublicGetCustomAttributesInfoOK with default headers values
func NewPublicGetCustomAttributesInfoOK() *PublicGetCustomAttributesInfoOK {
	return &PublicGetCustomAttributesInfoOK{}
}

/*PublicGetCustomAttributesInfoOK handles this case with default header values.

  Successful operation
*/
type PublicGetCustomAttributesInfoOK struct {
	Payload map[string]interface{}
}

func (o *PublicGetCustomAttributesInfoOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] publicGetCustomAttributesInfoOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetCustomAttributesInfoOK) ToJSONString() string {
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

func (o *PublicGetCustomAttributesInfoOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicGetCustomAttributesInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetCustomAttributesInfoNotFound creates a PublicGetCustomAttributesInfoNotFound with default headers values
func NewPublicGetCustomAttributesInfoNotFound() *PublicGetCustomAttributesInfoNotFound {
	return &PublicGetCustomAttributesInfoNotFound{}
}

/*PublicGetCustomAttributesInfoNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type PublicGetCustomAttributesInfoNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetCustomAttributesInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] publicGetCustomAttributesInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetCustomAttributesInfoNotFound) ToJSONString() string {
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

func (o *PublicGetCustomAttributesInfoNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetCustomAttributesInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
