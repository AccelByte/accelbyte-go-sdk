// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewRetrieveAllLegalPoliciesParams creates a new RetrieveAllLegalPoliciesParams object
// with the default values initialized.
func NewRetrieveAllLegalPoliciesParams() *RetrieveAllLegalPoliciesParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveAllLegalPoliciesParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllLegalPoliciesParamsWithTimeout creates a new RetrieveAllLegalPoliciesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllLegalPoliciesParamsWithTimeout(timeout time.Duration) *RetrieveAllLegalPoliciesParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveAllLegalPoliciesParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: timeout,
	}
}

// NewRetrieveAllLegalPoliciesParamsWithContext creates a new RetrieveAllLegalPoliciesParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllLegalPoliciesParamsWithContext(ctx context.Context) *RetrieveAllLegalPoliciesParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveAllLegalPoliciesParams{
		VisibleOnly: &visibleOnlyDefault,

		Context: ctx,
	}
}

// NewRetrieveAllLegalPoliciesParamsWithHTTPClient creates a new RetrieveAllLegalPoliciesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllLegalPoliciesParamsWithHTTPClient(client *http.Client) *RetrieveAllLegalPoliciesParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveAllLegalPoliciesParams{
		VisibleOnly: &visibleOnlyDefault,
		HTTPClient:  client,
	}
}

/*RetrieveAllLegalPoliciesParams contains all the parameters to send to the API endpoint
for the retrieve all legal policies operation typically these are written to a http.Request
*/
type RetrieveAllLegalPoliciesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*VisibleOnly*/
	VisibleOnly *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) WithTimeout(timeout time.Duration) *RetrieveAllLegalPoliciesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) WithContext(ctx context.Context) *RetrieveAllLegalPoliciesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) WithHTTPClient(client *http.Client) *RetrieveAllLegalPoliciesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveAllLegalPoliciesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithVisibleOnly adds the visibleOnly to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) WithVisibleOnly(visibleOnly *bool) *RetrieveAllLegalPoliciesParams {
	o.SetVisibleOnly(visibleOnly)
	return o
}

// SetVisibleOnly adds the visibleOnly to the retrieve all legal policies params
func (o *RetrieveAllLegalPoliciesParams) SetVisibleOnly(visibleOnly *bool) {
	o.VisibleOnly = visibleOnly
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllLegalPoliciesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.VisibleOnly != nil {

		// query param visibleOnly
		var qrVisibleOnly bool
		if o.VisibleOnly != nil {
			qrVisibleOnly = *o.VisibleOnly
		}
		qVisibleOnly := swag.FormatBool(qrVisibleOnly)
		if qVisibleOnly != "" {
			if err := r.SetQueryParam("visibleOnly", qVisibleOnly); err != nil {
				return err
			}
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
