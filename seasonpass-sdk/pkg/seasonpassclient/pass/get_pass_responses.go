// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pass

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// GetPassReader is a Reader for the GetPass structure.
type GetPassReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPassReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPassOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPassBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPassNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPassOK creates a GetPassOK with default headers values
func NewGetPassOK() *GetPassOK {
	return &GetPassOK{}
}

/*GetPassOK handles this case with default header values.

  successful operation
*/
type GetPassOK struct {
	Payload *seasonpassclientmodels.PassInfo
}

func (o *GetPassOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}][%d] getPassOK  %+v", 200, o.ToJSONString())
}

func (o *GetPassOK) ToJSONString() string {
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

func (o *GetPassOK) GetPayload() *seasonpassclientmodels.PassInfo {
	return o.Payload
}

func (o *GetPassOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.PassInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPassBadRequest creates a GetPassBadRequest with default headers values
func NewGetPassBadRequest() *GetPassBadRequest {
	return &GetPassBadRequest{}
}

/*GetPassBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type GetPassBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *GetPassBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}][%d] getPassBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetPassBadRequest) ToJSONString() string {
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

func (o *GetPassBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPassBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPassNotFound creates a GetPassNotFound with default headers values
func NewGetPassNotFound() *GetPassNotFound {
	return &GetPassNotFound{}
}

/*GetPassNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr><tr><td>49145</td><td>Pass [{code}] does not exist</td></tr></table>
*/
type GetPassNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *GetPassNotFound) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}][%d] getPassNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPassNotFound) ToJSONString() string {
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

func (o *GetPassNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPassNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
