// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// UpdateXblBPCertFileReader is a Reader for the UpdateXblBPCertFile structure.
type UpdateXblBPCertFileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateXblBPCertFileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateXblBPCertFileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateXblBPCertFileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/iap/config/xbl/cert returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateXblBPCertFileOK creates a UpdateXblBPCertFileOK with default headers values
func NewUpdateXblBPCertFileOK() *UpdateXblBPCertFileOK {
	return &UpdateXblBPCertFileOK{}
}

/*UpdateXblBPCertFileOK handles this case with default header values.

  successful operation
*/
type UpdateXblBPCertFileOK struct {
	Payload *platformclientmodels.XblIAPConfigInfo
}

func (o *UpdateXblBPCertFileOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/config/xbl/cert][%d] updateXblBPCertFileOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateXblBPCertFileOK) ToJSONString() string {
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

func (o *UpdateXblBPCertFileOK) GetPayload() *platformclientmodels.XblIAPConfigInfo {
	return o.Payload
}

func (o *UpdateXblBPCertFileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.XblIAPConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateXblBPCertFileBadRequest creates a UpdateXblBPCertFileBadRequest with default headers values
func NewUpdateXblBPCertFileBadRequest() *UpdateXblBPCertFileBadRequest {
	return &UpdateXblBPCertFileBadRequest{}
}

/*UpdateXblBPCertFileBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39221</td><td>Invalid Xbox Business Partner Certificate or password: [{message}]</td></tr></table>
*/
type UpdateXblBPCertFileBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateXblBPCertFileBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/config/xbl/cert][%d] updateXblBPCertFileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateXblBPCertFileBadRequest) ToJSONString() string {
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

func (o *UpdateXblBPCertFileBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateXblBPCertFileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
