// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package extend_files

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// GetExtendFileReader is a Reader for the GetExtendFile structure.
type GetExtendFileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetExtendFileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetExtendFileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetExtendFileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetExtendFileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 502:
		result := NewGetExtendFileBadGateway()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v1/admin/namespaces/{namespace}/files/{filePath} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetExtendFileOK creates a GetExtendFileOK with default headers values
func NewGetExtendFileOK() *GetExtendFileOK {
	return &GetExtendFileOK{}
}

/*GetExtendFileOK handles this case with default header values.

  OK
*/
type GetExtendFileOK struct {
}

func (o *GetExtendFileOK) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/files/{filePath}][%d] getExtendFileOK ", 200)
}

func (o *GetExtendFileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetExtendFileBadRequest creates a GetExtendFileBadRequest with default headers values
func NewGetExtendFileBadRequest() *GetExtendFileBadRequest {
	return &GetExtendFileBadRequest{}
}

/*GetExtendFileBadRequest handles this case with default header values.

  Bad Request
*/
type GetExtendFileBadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetExtendFileBadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/files/{filePath}][%d] getExtendFileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetExtendFileBadRequest) ToJSONString() string {
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

func (o *GetExtendFileBadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetExtendFileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetExtendFileNotFound creates a GetExtendFileNotFound with default headers values
func NewGetExtendFileNotFound() *GetExtendFileNotFound {
	return &GetExtendFileNotFound{}
}

/*GetExtendFileNotFound handles this case with default header values.

  Not Found
*/
type GetExtendFileNotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetExtendFileNotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/files/{filePath}][%d] getExtendFileNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetExtendFileNotFound) ToJSONString() string {
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

func (o *GetExtendFileNotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetExtendFileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetExtendFileBadGateway creates a GetExtendFileBadGateway with default headers values
func NewGetExtendFileBadGateway() *GetExtendFileBadGateway {
	return &GetExtendFileBadGateway{}
}

/*GetExtendFileBadGateway handles this case with default header values.

  Bad Gateway
*/
type GetExtendFileBadGateway struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetExtendFileBadGateway) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/files/{filePath}][%d] getExtendFileBadGateway  %+v", 502, o.ToJSONString())
}

func (o *GetExtendFileBadGateway) ToJSONString() string {
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

func (o *GetExtendFileBadGateway) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetExtendFileBadGateway) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
