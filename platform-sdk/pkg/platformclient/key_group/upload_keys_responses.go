// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package key_group

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

// UploadKeysReader is a Reader for the UploadKeys structure.
type UploadKeysReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UploadKeysReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUploadKeysOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUploadKeysBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUploadKeysNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUploadKeysOK creates a UploadKeysOK with default headers values
func NewUploadKeysOK() *UploadKeysOK {
	return &UploadKeysOK{}
}

/*UploadKeysOK handles this case with default header values.

  successful operation
*/
type UploadKeysOK struct {
	Payload *platformclientmodels.BulkOperationResult
}

func (o *UploadKeysOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys][%d] uploadKeysOK  %+v", 200, o.ToJSONString())
}

func (o *UploadKeysOK) ToJSONString() string {
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

func (o *UploadKeysOK) GetPayload() *platformclientmodels.BulkOperationResult {
	return o.Payload
}

func (o *UploadKeysOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.BulkOperationResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUploadKeysBadRequest creates a UploadKeysBadRequest with default headers values
func NewUploadKeysBadRequest() *UploadKeysBadRequest {
	return &UploadKeysBadRequest{}
}

/*UploadKeysBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37221</td><td>Invalid key file</td></tr></table>
*/
type UploadKeysBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UploadKeysBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys][%d] uploadKeysBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UploadKeysBadRequest) ToJSONString() string {
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

func (o *UploadKeysBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UploadKeysBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUploadKeysNotFound creates a UploadKeysNotFound with default headers values
func NewUploadKeysNotFound() *UploadKeysNotFound {
	return &UploadKeysNotFound{}
}

/*UploadKeysNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37241</td><td>Key group [{keyGroupId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UploadKeysNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UploadKeysNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys][%d] uploadKeysNotFound  %+v", 404, o.ToJSONString())
}

func (o *UploadKeysNotFound) ToJSONString() string {
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

func (o *UploadKeysNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UploadKeysNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
