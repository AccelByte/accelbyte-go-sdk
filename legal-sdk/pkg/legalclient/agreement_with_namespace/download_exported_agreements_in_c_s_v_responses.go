// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement_with_namespace

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// DownloadExportedAgreementsInCSVReader is a Reader for the DownloadExportedAgreementsInCSV structure.
type DownloadExportedAgreementsInCSVReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DownloadExportedAgreementsInCSVReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDownloadExportedAgreementsInCSVOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDownloadExportedAgreementsInCSVNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDownloadExportedAgreementsInCSVOK creates a DownloadExportedAgreementsInCSVOK with default headers values
func NewDownloadExportedAgreementsInCSVOK() *DownloadExportedAgreementsInCSVOK {
	return &DownloadExportedAgreementsInCSVOK{}
}

/*DownloadExportedAgreementsInCSVOK handles this case with default header values.

  successful operation
*/
type DownloadExportedAgreementsInCSVOK struct {
	Payload *legalclientmodels.DownloadExportedAgreementsInCSVResponse
}

func (o *DownloadExportedAgreementsInCSVOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download][%d] downloadExportedAgreementsInCSVOK  %+v", 200, o.ToJSONString())
}

func (o *DownloadExportedAgreementsInCSVOK) ToJSONString() string {
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

func (o *DownloadExportedAgreementsInCSVOK) GetPayload() *legalclientmodels.DownloadExportedAgreementsInCSVResponse {
	return o.Payload
}

func (o *DownloadExportedAgreementsInCSVOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.DownloadExportedAgreementsInCSVResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDownloadExportedAgreementsInCSVNotFound creates a DownloadExportedAgreementsInCSVNotFound with default headers values
func NewDownloadExportedAgreementsInCSVNotFound() *DownloadExportedAgreementsInCSVNotFound {
	return &DownloadExportedAgreementsInCSVNotFound{}
}

/*DownloadExportedAgreementsInCSVNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40047</td><td>Exported agreements for exportId [{exportId}] not found</td></tr></table>
*/
type DownloadExportedAgreementsInCSVNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *DownloadExportedAgreementsInCSVNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download][%d] downloadExportedAgreementsInCSVNotFound  %+v", 404, o.ToJSONString())
}

func (o *DownloadExportedAgreementsInCSVNotFound) ToJSONString() string {
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

func (o *DownloadExportedAgreementsInCSVNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DownloadExportedAgreementsInCSVNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
