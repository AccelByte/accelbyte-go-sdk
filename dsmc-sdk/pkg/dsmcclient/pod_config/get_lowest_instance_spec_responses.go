// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pod_config

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

// GetLowestInstanceSpecReader is a Reader for the GetLowestInstanceSpec structure.
type GetLowestInstanceSpecReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLowestInstanceSpecReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLowestInstanceSpecOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetLowestInstanceSpecUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetLowestInstanceSpecInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/instances/spec/lowest returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLowestInstanceSpecOK creates a GetLowestInstanceSpecOK with default headers values
func NewGetLowestInstanceSpecOK() *GetLowestInstanceSpecOK {
	return &GetLowestInstanceSpecOK{}
}

/*GetLowestInstanceSpecOK handles this case with default header values.

  Lowest Instance Spec
*/
type GetLowestInstanceSpecOK struct {
	Payload *dsmcclientmodels.ModelsInstanceSpec
}

func (o *GetLowestInstanceSpecOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/instances/spec/lowest][%d] getLowestInstanceSpecOK  %+v", 200, o.ToJSONString())
}

func (o *GetLowestInstanceSpecOK) ToJSONString() string {
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

func (o *GetLowestInstanceSpecOK) GetPayload() *dsmcclientmodels.ModelsInstanceSpec {
	return o.Payload
}

func (o *GetLowestInstanceSpecOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsInstanceSpec)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLowestInstanceSpecUnauthorized creates a GetLowestInstanceSpecUnauthorized with default headers values
func NewGetLowestInstanceSpecUnauthorized() *GetLowestInstanceSpecUnauthorized {
	return &GetLowestInstanceSpecUnauthorized{}
}

/*GetLowestInstanceSpecUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetLowestInstanceSpecUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetLowestInstanceSpecUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/instances/spec/lowest][%d] getLowestInstanceSpecUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetLowestInstanceSpecUnauthorized) ToJSONString() string {
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

func (o *GetLowestInstanceSpecUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetLowestInstanceSpecUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLowestInstanceSpecInternalServerError creates a GetLowestInstanceSpecInternalServerError with default headers values
func NewGetLowestInstanceSpecInternalServerError() *GetLowestInstanceSpecInternalServerError {
	return &GetLowestInstanceSpecInternalServerError{}
}

/*GetLowestInstanceSpecInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetLowestInstanceSpecInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetLowestInstanceSpecInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/instances/spec/lowest][%d] getLowestInstanceSpecInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetLowestInstanceSpecInternalServerError) ToJSONString() string {
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

func (o *GetLowestInstanceSpecInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetLowestInstanceSpecInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
