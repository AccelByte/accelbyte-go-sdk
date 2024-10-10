// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// ClearCacheReader is a Reader for the ClearCache structure.
type ClearCacheReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ClearCacheReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewClearCacheNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewClearCacheUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewClearCacheInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/cache returns an error %d: %s", response.Code(), string(data))
	}
}

// NewClearCacheNoContent creates a ClearCacheNoContent with default headers values
func NewClearCacheNoContent() *ClearCacheNoContent {
	return &ClearCacheNoContent{}
}

/*ClearCacheNoContent handles this case with default header values.

  ok
*/
type ClearCacheNoContent struct {
}

func (o *ClearCacheNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/cache][%d] clearCacheNoContent ", 204)
}

func (o *ClearCacheNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewClearCacheUnauthorized creates a ClearCacheUnauthorized with default headers values
func NewClearCacheUnauthorized() *ClearCacheUnauthorized {
	return &ClearCacheUnauthorized{}
}

/*ClearCacheUnauthorized handles this case with default header values.

  Unauthorized
*/
type ClearCacheUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ClearCacheUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/cache][%d] clearCacheUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ClearCacheUnauthorized) ToJSONString() string {
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

func (o *ClearCacheUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ClearCacheUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewClearCacheInternalServerError creates a ClearCacheInternalServerError with default headers values
func NewClearCacheInternalServerError() *ClearCacheInternalServerError {
	return &ClearCacheInternalServerError{}
}

/*ClearCacheInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ClearCacheInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ClearCacheInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/cache][%d] clearCacheInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ClearCacheInternalServerError) ToJSONString() string {
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

func (o *ClearCacheInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ClearCacheInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
