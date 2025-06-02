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

// RestoreDLCItemConfigHistoryReader is a Reader for the RestoreDLCItemConfigHistory structure.
type RestoreDLCItemConfigHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RestoreDLCItemConfigHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewRestoreDLCItemConfigHistoryNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRestoreDLCItemConfigHistoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/dlc/config/history/{id}/restore returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRestoreDLCItemConfigHistoryNoContent creates a RestoreDLCItemConfigHistoryNoContent with default headers values
func NewRestoreDLCItemConfigHistoryNoContent() *RestoreDLCItemConfigHistoryNoContent {
	return &RestoreDLCItemConfigHistoryNoContent{}
}

/*RestoreDLCItemConfigHistoryNoContent handles this case with default header values.

  Succesfully restore the revision
*/
type RestoreDLCItemConfigHistoryNoContent struct {
}

func (o *RestoreDLCItemConfigHistoryNoContent) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/dlc/config/history/{id}/restore][%d] restoreDlcItemConfigHistoryNoContent ", 204)
}

func (o *RestoreDLCItemConfigHistoryNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRestoreDLCItemConfigHistoryNotFound creates a RestoreDLCItemConfigHistoryNotFound with default headers values
func NewRestoreDLCItemConfigHistoryNotFound() *RestoreDLCItemConfigHistoryNotFound {
	return &RestoreDLCItemConfigHistoryNotFound{}
}

/*RestoreDLCItemConfigHistoryNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39442</td><td>DLC item config cannot be found in namespace [{namespace}]</td></tr></table>
*/
type RestoreDLCItemConfigHistoryNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RestoreDLCItemConfigHistoryNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/dlc/config/history/{id}/restore][%d] restoreDlcItemConfigHistoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *RestoreDLCItemConfigHistoryNotFound) ToJSONString() string {
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

func (o *RestoreDLCItemConfigHistoryNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RestoreDLCItemConfigHistoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
