// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package revocation

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

// GetRevocationConfigReader is a Reader for the GetRevocationConfig structure.
type GetRevocationConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRevocationConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRevocationConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetRevocationConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/revocation/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRevocationConfigOK creates a GetRevocationConfigOK with default headers values
func NewGetRevocationConfigOK() *GetRevocationConfigOK {
	return &GetRevocationConfigOK{}
}

/*GetRevocationConfigOK handles this case with default header values.

  successful operation
*/
type GetRevocationConfigOK struct {
	Payload *platformclientmodels.RevocationConfigInfo
}

func (o *GetRevocationConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/revocation/config][%d] getRevocationConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetRevocationConfigOK) ToJSONString() string {
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

func (o *GetRevocationConfigOK) GetPayload() *platformclientmodels.RevocationConfigInfo {
	return o.Payload
}

func (o *GetRevocationConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RevocationConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRevocationConfigNotFound creates a GetRevocationConfigNotFound with default headers values
func NewGetRevocationConfigNotFound() *GetRevocationConfigNotFound {
	return &GetRevocationConfigNotFound{}
}

/*GetRevocationConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33243</td><td>Payment callback config for [{namespace}] does not exist</td></tr></table>
*/
type GetRevocationConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetRevocationConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/revocation/config][%d] getRevocationConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetRevocationConfigNotFound) ToJSONString() string {
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

func (o *GetRevocationConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetRevocationConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
