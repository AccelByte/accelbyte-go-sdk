// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifact_upload_process_queue

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclientmodels"
)

// ListNodesIPAddressReader is a Reader for the ListNodesIPAddress structure.
type ListNodesIPAddressReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListNodesIPAddressReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListNodesIPAddressOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListNodesIPAddressBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListNodesIPAddressInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsartifact/artifacts/nodes/ipaddresses returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListNodesIPAddressOK creates a ListNodesIPAddressOK with default headers values
func NewListNodesIPAddressOK() *ListNodesIPAddressOK {
	return &ListNodesIPAddressOK{}
}

/*ListNodesIPAddressOK handles this case with default header values.

  get all active queue success.
*/
type ListNodesIPAddressOK struct {
	Payload *dsartifactclientmodels.ModelsListNodesIPAddress
}

func (o *ListNodesIPAddressOK) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/nodes/ipaddresses][%d] listNodesIpAddressOK  %+v", 200, o.ToJSONString())
}

func (o *ListNodesIPAddressOK) ToJSONString() string {
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

func (o *ListNodesIPAddressOK) GetPayload() *dsartifactclientmodels.ModelsListNodesIPAddress {
	return o.Payload
}

func (o *ListNodesIPAddressOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ModelsListNodesIPAddress)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListNodesIPAddressBadRequest creates a ListNodesIPAddressBadRequest with default headers values
func NewListNodesIPAddressBadRequest() *ListNodesIPAddressBadRequest {
	return &ListNodesIPAddressBadRequest{}
}

/*ListNodesIPAddressBadRequest handles this case with default header values.

  Bad Request
*/
type ListNodesIPAddressBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListNodesIPAddressBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/nodes/ipaddresses][%d] listNodesIpAddressBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListNodesIPAddressBadRequest) ToJSONString() string {
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

func (o *ListNodesIPAddressBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListNodesIPAddressBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListNodesIPAddressInternalServerError creates a ListNodesIPAddressInternalServerError with default headers values
func NewListNodesIPAddressInternalServerError() *ListNodesIPAddressInternalServerError {
	return &ListNodesIPAddressInternalServerError{}
}

/*ListNodesIPAddressInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListNodesIPAddressInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListNodesIPAddressInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/nodes/ipaddresses][%d] listNodesIpAddressInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListNodesIPAddressInternalServerError) ToJSONString() string {
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

func (o *ListNodesIPAddressInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListNodesIPAddressInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
