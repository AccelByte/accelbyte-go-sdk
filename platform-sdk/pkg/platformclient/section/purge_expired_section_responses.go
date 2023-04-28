// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package section

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

// PurgeExpiredSectionReader is a Reader for the PurgeExpiredSection structure.
type PurgeExpiredSectionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PurgeExpiredSectionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPurgeExpiredSectionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPurgeExpiredSectionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/sections/purge/expired returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPurgeExpiredSectionNoContent creates a PurgeExpiredSectionNoContent with default headers values
func NewPurgeExpiredSectionNoContent() *PurgeExpiredSectionNoContent {
	return &PurgeExpiredSectionNoContent{}
}

/*PurgeExpiredSectionNoContent handles this case with default header values.

  purge expired section successfully
*/
type PurgeExpiredSectionNoContent struct {
}

func (o *PurgeExpiredSectionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/sections/purge/expired][%d] purgeExpiredSectionNoContent ", 204)
}

func (o *PurgeExpiredSectionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPurgeExpiredSectionNotFound creates a PurgeExpiredSectionNotFound with default headers values
func NewPurgeExpiredSectionNotFound() *PurgeExpiredSectionNotFound {
	return &PurgeExpiredSectionNotFound{}
}

/*PurgeExpiredSectionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PurgeExpiredSectionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PurgeExpiredSectionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/sections/purge/expired][%d] purgeExpiredSectionNotFound  %+v", 404, o.ToJSONString())
}

func (o *PurgeExpiredSectionNotFound) ToJSONString() string {
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

func (o *PurgeExpiredSectionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PurgeExpiredSectionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
