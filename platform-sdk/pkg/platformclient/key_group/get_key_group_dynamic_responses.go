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

// GetKeyGroupDynamicReader is a Reader for the GetKeyGroupDynamic structure.
type GetKeyGroupDynamicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetKeyGroupDynamicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetKeyGroupDynamicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetKeyGroupDynamicNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetKeyGroupDynamicOK creates a GetKeyGroupDynamicOK with default headers values
func NewGetKeyGroupDynamicOK() *GetKeyGroupDynamicOK {
	return &GetKeyGroupDynamicOK{}
}

/*GetKeyGroupDynamicOK handles this case with default header values.

  successful operation
*/
type GetKeyGroupDynamicOK struct {
	Payload *platformclientmodels.KeyGroupDynamicInfo
}

func (o *GetKeyGroupDynamicOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic][%d] getKeyGroupDynamicOK  %+v", 200, o.ToJSONString())
}

func (o *GetKeyGroupDynamicOK) ToJSONString() string {
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

func (o *GetKeyGroupDynamicOK) GetPayload() *platformclientmodels.KeyGroupDynamicInfo {
	return o.Payload
}

func (o *GetKeyGroupDynamicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.KeyGroupDynamicInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetKeyGroupDynamicNotFound creates a GetKeyGroupDynamicNotFound with default headers values
func NewGetKeyGroupDynamicNotFound() *GetKeyGroupDynamicNotFound {
	return &GetKeyGroupDynamicNotFound{}
}

/*GetKeyGroupDynamicNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37241</td><td>Key group [{keyGroupId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetKeyGroupDynamicNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetKeyGroupDynamicNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic][%d] getKeyGroupDynamicNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetKeyGroupDynamicNotFound) ToJSONString() string {
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

func (o *GetKeyGroupDynamicNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetKeyGroupDynamicNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
