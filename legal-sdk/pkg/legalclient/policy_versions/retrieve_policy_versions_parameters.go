// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package policy_versions

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewRetrievePolicyVersionsParams creates a new RetrievePolicyVersionsParams object
// with the default values initialized.
func NewRetrievePolicyVersionsParams() *RetrievePolicyVersionsParams {
	var ()
	return &RetrievePolicyVersionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrievePolicyVersionsParamsWithTimeout creates a new RetrievePolicyVersionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrievePolicyVersionsParamsWithTimeout(timeout time.Duration) *RetrievePolicyVersionsParams {
	var ()
	return &RetrievePolicyVersionsParams{

		timeout: timeout,
	}
}

// NewRetrievePolicyVersionsParamsWithContext creates a new RetrievePolicyVersionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrievePolicyVersionsParamsWithContext(ctx context.Context) *RetrievePolicyVersionsParams {
	var ()
	return &RetrievePolicyVersionsParams{

		Context: ctx,
	}
}

// NewRetrievePolicyVersionsParamsWithHTTPClient creates a new RetrievePolicyVersionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrievePolicyVersionsParamsWithHTTPClient(client *http.Client) *RetrievePolicyVersionsParams {
	var ()
	return &RetrievePolicyVersionsParams{
		HTTPClient: client,
	}
}

/*RetrievePolicyVersionsParams contains all the parameters to send to the API endpoint
for the retrieve policy versions operation typically these are written to a http.Request
*/
type RetrievePolicyVersionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BasePolicyID
	  BasePolicy Id

	*/
	BasePolicyID *string
	/*LocaleID
	  Locale Id

	*/
	LocaleID *string
	/*Namespace
	  Namespace

	*/
	Namespace *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) WithTimeout(timeout time.Duration) *RetrievePolicyVersionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) WithContext(ctx context.Context) *RetrievePolicyVersionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) WithHTTPClient(client *http.Client) *RetrievePolicyVersionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBasePolicyID adds the basePolicyID to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) WithBasePolicyID(basePolicyID *string) *RetrievePolicyVersionsParams {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) SetBasePolicyID(basePolicyID *string) {
	o.BasePolicyID = basePolicyID
}

// WithLocaleID adds the localeID to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) WithLocaleID(localeID *string) *RetrievePolicyVersionsParams {
	o.SetLocaleID(localeID)
	return o
}

// SetLocaleID adds the localeId to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) SetLocaleID(localeID *string) {
	o.LocaleID = localeID
}

// WithNamespace adds the namespace to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) WithNamespace(namespace *string) *RetrievePolicyVersionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve policy versions params
func (o *RetrievePolicyVersionsParams) SetNamespace(namespace *string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrievePolicyVersionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.BasePolicyID != nil {

		// query param basePolicyId
		var qrBasePolicyID string
		if o.BasePolicyID != nil {
			qrBasePolicyID = *o.BasePolicyID
		}
		qBasePolicyID := qrBasePolicyID
		if qBasePolicyID != "" {
			if err := r.SetQueryParam("basePolicyId", qBasePolicyID); err != nil {
				return err
			}
		}

	}

	if o.LocaleID != nil {

		// query param localeId
		var qrLocaleID string
		if o.LocaleID != nil {
			qrLocaleID = *o.LocaleID
		}
		qLocaleID := qrLocaleID
		if qLocaleID != "" {
			if err := r.SetQueryParam("localeId", qLocaleID); err != nil {
				return err
			}
		}

	}

	if o.Namespace != nil {

		// query param namespace
		var qrNamespace string
		if o.Namespace != nil {
			qrNamespace = *o.Namespace
		}
		qNamespace := qrNamespace
		if qNamespace != "" {
			if err := r.SetQueryParam("namespace", qNamespace); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
