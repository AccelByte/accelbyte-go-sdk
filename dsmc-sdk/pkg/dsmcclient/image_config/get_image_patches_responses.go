// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image_config

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

// GetImagePatchesReader is a Reader for the GetImagePatches structure.
type GetImagePatchesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetImagePatchesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetImagePatchesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetImagePatchesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetImagePatchesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetImagePatchesOK creates a GetImagePatchesOK with default headers values
func NewGetImagePatchesOK() *GetImagePatchesOK {
	return &GetImagePatchesOK{}
}

/*GetImagePatchesOK handles this case with default header values.

  ok
*/
type GetImagePatchesOK struct {
	Payload *dsmcclientmodels.ModelsListImagePatchesResponse
}

func (o *GetImagePatchesOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches][%d] getImagePatchesOK  %+v", 200, o.ToJSONString())
}

func (o *GetImagePatchesOK) ToJSONString() string {
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

func (o *GetImagePatchesOK) GetPayload() *dsmcclientmodels.ModelsListImagePatchesResponse {
	return o.Payload
}

func (o *GetImagePatchesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsListImagePatchesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetImagePatchesUnauthorized creates a GetImagePatchesUnauthorized with default headers values
func NewGetImagePatchesUnauthorized() *GetImagePatchesUnauthorized {
	return &GetImagePatchesUnauthorized{}
}

/*GetImagePatchesUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetImagePatchesUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetImagePatchesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches][%d] getImagePatchesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetImagePatchesUnauthorized) ToJSONString() string {
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

func (o *GetImagePatchesUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetImagePatchesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetImagePatchesInternalServerError creates a GetImagePatchesInternalServerError with default headers values
func NewGetImagePatchesInternalServerError() *GetImagePatchesInternalServerError {
	return &GetImagePatchesInternalServerError{}
}

/*GetImagePatchesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetImagePatchesInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetImagePatchesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches][%d] getImagePatchesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetImagePatchesInternalServerError) ToJSONString() string {
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

func (o *GetImagePatchesInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetImagePatchesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
