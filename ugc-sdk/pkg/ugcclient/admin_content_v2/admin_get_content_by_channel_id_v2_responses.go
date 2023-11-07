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

// AdminGetContentByChannelIDV2Reader is a Reader for the AdminGetContentByChannelIDV2 structure.
type AdminGetContentByChannelIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetContentByChannelIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetContentByChannelIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetContentByChannelIDV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetContentByChannelIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetContentByChannelIDV2OK creates a AdminGetContentByChannelIDV2OK with default headers values
func NewAdminGetContentByChannelIDV2OK() *AdminGetContentByChannelIDV2OK {
	return &AdminGetContentByChannelIDV2OK{}
}

/*AdminGetContentByChannelIDV2OK handles this case with default header values.

  OK
*/
type AdminGetContentByChannelIDV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2
}

func (o *AdminGetContentByChannelIDV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminGetContentByChannelIdV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetContentByChannelIDV2OK) ToJSONString() string {
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

func (o *AdminGetContentByChannelIDV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2 {
	return o.Payload
}

func (o *AdminGetContentByChannelIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetContentByChannelIDV2Unauthorized creates a AdminGetContentByChannelIDV2Unauthorized with default headers values
func NewAdminGetContentByChannelIDV2Unauthorized() *AdminGetContentByChannelIDV2Unauthorized {
	return &AdminGetContentByChannelIDV2Unauthorized{}
}

/*AdminGetContentByChannelIDV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetContentByChannelIDV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByChannelIDV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminGetContentByChannelIdV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetContentByChannelIDV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetContentByChannelIDV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByChannelIDV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentByChannelIDV2InternalServerError creates a AdminGetContentByChannelIDV2InternalServerError with default headers values
func NewAdminGetContentByChannelIDV2InternalServerError() *AdminGetContentByChannelIDV2InternalServerError {
	return &AdminGetContentByChannelIDV2InternalServerError{}
}

/*AdminGetContentByChannelIDV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetContentByChannelIDV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByChannelIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminGetContentByChannelIdV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetContentByChannelIDV2InternalServerError) ToJSONString() string {
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

func (o *AdminGetContentByChannelIDV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByChannelIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
