// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement_with_namespace

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewInitiateExportAgreementsToCSVParams creates a new InitiateExportAgreementsToCSVParams object
// with the default values initialized.
func NewInitiateExportAgreementsToCSVParams() *InitiateExportAgreementsToCSVParams {
	var ()
	return &InitiateExportAgreementsToCSVParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewInitiateExportAgreementsToCSVParamsWithTimeout creates a new InitiateExportAgreementsToCSVParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewInitiateExportAgreementsToCSVParamsWithTimeout(timeout time.Duration) *InitiateExportAgreementsToCSVParams {
	var ()
	return &InitiateExportAgreementsToCSVParams{

		timeout: timeout,
	}
}

// NewInitiateExportAgreementsToCSVParamsWithContext creates a new InitiateExportAgreementsToCSVParams object
// with the default values initialized, and the ability to set a context for a request
func NewInitiateExportAgreementsToCSVParamsWithContext(ctx context.Context) *InitiateExportAgreementsToCSVParams {
	var ()
	return &InitiateExportAgreementsToCSVParams{

		Context: ctx,
	}
}

// NewInitiateExportAgreementsToCSVParamsWithHTTPClient creates a new InitiateExportAgreementsToCSVParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewInitiateExportAgreementsToCSVParamsWithHTTPClient(client *http.Client) *InitiateExportAgreementsToCSVParams {
	var ()
	return &InitiateExportAgreementsToCSVParams{
		HTTPClient: client,
	}
}

/*InitiateExportAgreementsToCSVParams contains all the parameters to send to the API endpoint
for the initiate export agreements to csv operation typically these are written to a http.Request
*/
type InitiateExportAgreementsToCSVParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PolicyVersionID
	  Policy Version Id

	*/
	PolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) WithTimeout(timeout time.Duration) *InitiateExportAgreementsToCSVParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) WithContext(ctx context.Context) *InitiateExportAgreementsToCSVParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) WithHTTPClient(client *http.Client) *InitiateExportAgreementsToCSVParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *InitiateExportAgreementsToCSVParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) WithNamespace(namespace string) *InitiateExportAgreementsToCSVParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyVersionID adds the policyVersionID to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) WithPolicyVersionID(policyVersionID string) *InitiateExportAgreementsToCSVParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the initiate export agreements to csv params
func (o *InitiateExportAgreementsToCSVParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *InitiateExportAgreementsToCSVParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param policyVersionId
	qrPolicyVersionID := o.PolicyVersionID
	qPolicyVersionID := qrPolicyVersionID
	if qPolicyVersionID != "" {
		if err := r.SetQueryParam("policyVersionId", qPolicyVersionID); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
