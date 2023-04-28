// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

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

// GetCodeReader is a Reader for the GetCode structure.
type GetCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewGetCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/codes/{code} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCodeOK creates a GetCodeOK with default headers values
func NewGetCodeOK() *GetCodeOK {
	return &GetCodeOK{}
}

/*GetCodeOK handles this case with default header values.

  successful operation
*/
type GetCodeOK struct {
	Payload *platformclientmodels.CodeInfo
}

func (o *GetCodeOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/codes/{code}][%d] getCodeOK  %+v", 200, o.ToJSONString())
}

func (o *GetCodeOK) ToJSONString() string {
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

func (o *GetCodeOK) GetPayload() *platformclientmodels.CodeInfo {
	return o.Payload
}

func (o *GetCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.CodeInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetCodeNotFound creates a GetCodeNotFound with default headers values
func NewGetCodeNotFound() *GetCodeNotFound {
	return &GetCodeNotFound{}
}

/*GetCodeNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37142</td><td>Code [{code}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetCodeNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetCodeNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/codes/{code}][%d] getCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCodeNotFound) ToJSONString() string {
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

func (o *GetCodeNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetCodeConflict creates a GetCodeConflict with default headers values
func NewGetCodeConflict() *GetCodeConflict {
	return &GetCodeConflict{}
}

/*GetCodeConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37172</td><td>Campaign [{campaignId}] is inactive in namespace [{namespace}]</td></tr><tr><td>37173</td><td>Code [{code}] is inactive in namespace [{namespace}]</td></tr><tr><td>37174</td><td>Exceeded max redeem count per code [{maxCount}]</td></tr><tr><td>37177</td><td>Code redemption not started</td></tr><tr><td>37178</td><td>Code redemption already ended</td></tr></table>
*/
type GetCodeConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetCodeConflict) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/codes/{code}][%d] getCodeConflict  %+v", 409, o.ToJSONString())
}

func (o *GetCodeConflict) ToJSONString() string {
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

func (o *GetCodeConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
