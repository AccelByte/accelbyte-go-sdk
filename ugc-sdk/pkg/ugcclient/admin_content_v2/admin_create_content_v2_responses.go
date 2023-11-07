// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminCreateContentV2Reader is a Reader for the AdminCreateContentV2 structure.
type AdminCreateContentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateContentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateContentV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateContentV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateContentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateContentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateContentV2Created creates a AdminCreateContentV2Created with default headers values
func NewAdminCreateContentV2Created() *AdminCreateContentV2Created {
	return &AdminCreateContentV2Created{}
}

/*AdminCreateContentV2Created handles this case with default header values.

  Created
*/
type AdminCreateContentV2Created struct {
	Payload *ugcclientmodels.ModelsCreateContentResponseV2
}

func (o *AdminCreateContentV2Created) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminCreateContentV2Created  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateContentV2Created) ToJSONString() string {
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

func (o *AdminCreateContentV2Created) GetPayload() *ugcclientmodels.ModelsCreateContentResponseV2 {
	return o.Payload
}

func (o *AdminCreateContentV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateContentV2BadRequest creates a AdminCreateContentV2BadRequest with default headers values
func NewAdminCreateContentV2BadRequest() *AdminCreateContentV2BadRequest {
	return &AdminCreateContentV2BadRequest{}
}

/*AdminCreateContentV2BadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateContentV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateContentV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminCreateContentV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateContentV2BadRequest) ToJSONString() string {
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

func (o *AdminCreateContentV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateContentV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateContentV2Unauthorized creates a AdminCreateContentV2Unauthorized with default headers values
func NewAdminCreateContentV2Unauthorized() *AdminCreateContentV2Unauthorized {
	return &AdminCreateContentV2Unauthorized{}
}

/*AdminCreateContentV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminCreateContentV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateContentV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminCreateContentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateContentV2Unauthorized) ToJSONString() string {
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

func (o *AdminCreateContentV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateContentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateContentV2InternalServerError creates a AdminCreateContentV2InternalServerError with default headers values
func NewAdminCreateContentV2InternalServerError() *AdminCreateContentV2InternalServerError {
	return &AdminCreateContentV2InternalServerError{}
}

/*AdminCreateContentV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateContentV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateContentV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminCreateContentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateContentV2InternalServerError) ToJSONString() string {
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

func (o *AdminCreateContentV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateContentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
