// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

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

// GetDLCItemConfigHistoryReader is a Reader for the GetDLCItemConfigHistory structure.
type GetDLCItemConfigHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetDLCItemConfigHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetDLCItemConfigHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetDLCItemConfigHistoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/dlc/config/history returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetDLCItemConfigHistoryOK creates a GetDLCItemConfigHistoryOK with default headers values
func NewGetDLCItemConfigHistoryOK() *GetDLCItemConfigHistoryOK {
	return &GetDLCItemConfigHistoryOK{}
}

/*GetDLCItemConfigHistoryOK handles this case with default header values.

  successful operation
*/
type GetDLCItemConfigHistoryOK struct {
	Payload *platformclientmodels.DLCItemConfigHistoryResult
}

func (o *GetDLCItemConfigHistoryOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/dlc/config/history][%d] getDlcItemConfigHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *GetDLCItemConfigHistoryOK) ToJSONString() string {
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

func (o *GetDLCItemConfigHistoryOK) GetPayload() *platformclientmodels.DLCItemConfigHistoryResult {
	return o.Payload
}

func (o *GetDLCItemConfigHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.DLCItemConfigHistoryResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetDLCItemConfigHistoryNotFound creates a GetDLCItemConfigHistoryNotFound with default headers values
func NewGetDLCItemConfigHistoryNotFound() *GetDLCItemConfigHistoryNotFound {
	return &GetDLCItemConfigHistoryNotFound{}
}

/*GetDLCItemConfigHistoryNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39442</td><td>DLC item config cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetDLCItemConfigHistoryNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetDLCItemConfigHistoryNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/dlc/config/history][%d] getDlcItemConfigHistoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetDLCItemConfigHistoryNotFound) ToJSONString() string {
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

func (o *GetDLCItemConfigHistoryNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetDLCItemConfigHistoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
