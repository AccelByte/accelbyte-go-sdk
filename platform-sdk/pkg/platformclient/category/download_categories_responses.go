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

// DownloadCategoriesReader is a Reader for the DownloadCategories structure.
type DownloadCategoriesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DownloadCategoriesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDownloadCategoriesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDownloadCategoriesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/categories/download returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDownloadCategoriesOK creates a DownloadCategoriesOK with default headers values
func NewDownloadCategoriesOK() *DownloadCategoriesOK {
	return &DownloadCategoriesOK{}
}

/*DownloadCategoriesOK handles this case with default header values.

  successful operation
*/
type DownloadCategoriesOK struct {
	Payload []*platformclientmodels.HierarchicalCategoryInfo
}

func (o *DownloadCategoriesOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/categories/download][%d] downloadCategoriesOK  %+v", 200, o.ToJSONString())
}

func (o *DownloadCategoriesOK) ToJSONString() string {
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

func (o *DownloadCategoriesOK) GetPayload() []*platformclientmodels.HierarchicalCategoryInfo {
	return o.Payload
}

func (o *DownloadCategoriesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDownloadCategoriesNotFound creates a DownloadCategoriesNotFound with default headers values
func NewDownloadCategoriesNotFound() *DownloadCategoriesNotFound {
	return &DownloadCategoriesNotFound{}
}

/*DownloadCategoriesNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DownloadCategoriesNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DownloadCategoriesNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/categories/download][%d] downloadCategoriesNotFound  %+v", 404, o.ToJSONString())
}

func (o *DownloadCategoriesNotFound) ToJSONString() string {
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

func (o *DownloadCategoriesNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DownloadCategoriesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
