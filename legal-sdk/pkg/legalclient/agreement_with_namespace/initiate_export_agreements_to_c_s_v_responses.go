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

// InitiateExportAgreementsToCSVReader is a Reader for the InitiateExportAgreementsToCSV structure.
type InitiateExportAgreementsToCSVReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *InitiateExportAgreementsToCSVReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewInitiateExportAgreementsToCSVOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewInitiateExportAgreementsToCSVBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewInitiateExportAgreementsToCSVNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewInitiateExportAgreementsToCSVConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/initiate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewInitiateExportAgreementsToCSVOK creates a InitiateExportAgreementsToCSVOK with default headers values
func NewInitiateExportAgreementsToCSVOK() *InitiateExportAgreementsToCSVOK {
	return &InitiateExportAgreementsToCSVOK{}
}

/*InitiateExportAgreementsToCSVOK handles this case with default header values.

  successful operation
*/
type InitiateExportAgreementsToCSVOK struct {
	Payload *legalclientmodels.InitiateExportAgreementsToCSVResponse
}

func (o *InitiateExportAgreementsToCSVOK) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/initiate][%d] initiateExportAgreementsToCSVOK  %+v", 200, o.ToJSONString())
}

func (o *InitiateExportAgreementsToCSVOK) ToJSONString() string {
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

func (o *InitiateExportAgreementsToCSVOK) GetPayload() *legalclientmodels.InitiateExportAgreementsToCSVResponse {
	return o.Payload
}

func (o *InitiateExportAgreementsToCSVOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.InitiateExportAgreementsToCSVResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewInitiateExportAgreementsToCSVBadRequest creates a InitiateExportAgreementsToCSVBadRequest with default headers values
func NewInitiateExportAgreementsToCSVBadRequest() *InitiateExportAgreementsToCSVBadRequest {
	return &InitiateExportAgreementsToCSVBadRequest{}
}

/*InitiateExportAgreementsToCSVBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40027</td><td>Too many export running currently</td></tr></table>
*/
type InitiateExportAgreementsToCSVBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *InitiateExportAgreementsToCSVBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/initiate][%d] initiateExportAgreementsToCSVBadRequest  %+v", 400, o.ToJSONString())
}

func (o *InitiateExportAgreementsToCSVBadRequest) ToJSONString() string {
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

func (o *InitiateExportAgreementsToCSVBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *InitiateExportAgreementsToCSVBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInitiateExportAgreementsToCSVNotFound creates a InitiateExportAgreementsToCSVNotFound with default headers values
func NewInitiateExportAgreementsToCSVNotFound() *InitiateExportAgreementsToCSVNotFound {
	return &InitiateExportAgreementsToCSVNotFound{}
}

/*InitiateExportAgreementsToCSVNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40045</td><td>Policy version with id: [{policyVersionId}] not found on namespace [{namespace}]</td></tr></table>
*/
type InitiateExportAgreementsToCSVNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *InitiateExportAgreementsToCSVNotFound) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/initiate][%d] initiateExportAgreementsToCSVNotFound  %+v", 404, o.ToJSONString())
}

func (o *InitiateExportAgreementsToCSVNotFound) ToJSONString() string {
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

func (o *InitiateExportAgreementsToCSVNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *InitiateExportAgreementsToCSVNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInitiateExportAgreementsToCSVConflict creates a InitiateExportAgreementsToCSVConflict with default headers values
func NewInitiateExportAgreementsToCSVConflict() *InitiateExportAgreementsToCSVConflict {
	return &InitiateExportAgreementsToCSVConflict{}
}

/*InitiateExportAgreementsToCSVConflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40071</td><td>Previous export still running for namespace [{namespace}] with exportId [{exportId}]</td></tr></table>
*/
type InitiateExportAgreementsToCSVConflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *InitiateExportAgreementsToCSVConflict) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/initiate][%d] initiateExportAgreementsToCSVConflict  %+v", 409, o.ToJSONString())
}

func (o *InitiateExportAgreementsToCSVConflict) ToJSONString() string {
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

func (o *InitiateExportAgreementsToCSVConflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *InitiateExportAgreementsToCSVConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
