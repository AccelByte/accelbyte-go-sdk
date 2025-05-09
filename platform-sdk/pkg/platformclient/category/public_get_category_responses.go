// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package category

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// PublicGetCategoryReader is a Reader for the PublicGetCategory structure.
type PublicGetCategoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetCategoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetCategoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetCategoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/categories/{categoryPath} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetCategoryOK creates a PublicGetCategoryOK with default headers values
func NewPublicGetCategoryOK() *PublicGetCategoryOK {
	return &PublicGetCategoryOK{}
}

/*PublicGetCategoryOK handles this case with default header values.

  successful operation
*/
type PublicGetCategoryOK struct {
	Payload *platformclientmodels.CategoryInfo
}

func (o *PublicGetCategoryOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/categories/{categoryPath}][%d] publicGetCategoryOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetCategoryOK) ToJSONString() string {
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

func (o *PublicGetCategoryOK) GetPayload() *platformclientmodels.CategoryInfo {
	return o.Payload
}

func (o *PublicGetCategoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.CategoryInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetCategoryNotFound creates a PublicGetCategoryNotFound with default headers values
func NewPublicGetCategoryNotFound() *PublicGetCategoryNotFound {
	return &PublicGetCategoryNotFound{}
}

/*PublicGetCategoryNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30241</td><td>Category [{categoryPath}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetCategoryNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetCategoryNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/categories/{categoryPath}][%d] publicGetCategoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetCategoryNotFound) ToJSONString() string {
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

func (o *PublicGetCategoryNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetCategoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
