// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

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

// NewExistsAnyPassByPassCodesParams creates a new ExistsAnyPassByPassCodesParams object
// with the default values initialized.
func NewExistsAnyPassByPassCodesParams() *ExistsAnyPassByPassCodesParams {
	var ()
	return &ExistsAnyPassByPassCodesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExistsAnyPassByPassCodesParamsWithTimeout creates a new ExistsAnyPassByPassCodesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExistsAnyPassByPassCodesParamsWithTimeout(timeout time.Duration) *ExistsAnyPassByPassCodesParams {
	var ()
	return &ExistsAnyPassByPassCodesParams{

		timeout: timeout,
	}
}

// NewExistsAnyPassByPassCodesParamsWithContext creates a new ExistsAnyPassByPassCodesParams object
// with the default values initialized, and the ability to set a context for a request
func NewExistsAnyPassByPassCodesParamsWithContext(ctx context.Context) *ExistsAnyPassByPassCodesParams {
	var ()
	return &ExistsAnyPassByPassCodesParams{

		Context: ctx,
	}
}

// NewExistsAnyPassByPassCodesParamsWithHTTPClient creates a new ExistsAnyPassByPassCodesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExistsAnyPassByPassCodesParamsWithHTTPClient(client *http.Client) *ExistsAnyPassByPassCodesParams {
	var ()
	return &ExistsAnyPassByPassCodesParams{
		HTTPClient: client,
	}
}

/*ExistsAnyPassByPassCodesParams contains all the parameters to send to the API endpoint
for the exists any pass by pass codes operation typically these are written to a http.Request
*/
type ExistsAnyPassByPassCodesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string
	/*PassCodes*/
	PassCodes []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) WithTimeout(timeout time.Duration) *ExistsAnyPassByPassCodesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) WithContext(ctx context.Context) *ExistsAnyPassByPassCodesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) WithHTTPClient(client *http.Client) *ExistsAnyPassByPassCodesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) WithNamespace(namespace string) *ExistsAnyPassByPassCodesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) WithUserID(userID string) *ExistsAnyPassByPassCodesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithPassCodes adds the passCodes to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) WithPassCodes(passCodes []string) *ExistsAnyPassByPassCodesParams {
	o.SetPassCodes(passCodes)
	return o
}

// SetPassCodes adds the passCodes to the exists any pass by pass codes params
func (o *ExistsAnyPassByPassCodesParams) SetPassCodes(passCodes []string) {
	o.PassCodes = passCodes
}

// WriteToRequest writes these params to a swagger request
func (o *ExistsAnyPassByPassCodesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	valuesPassCodes := o.PassCodes

	joinedPassCodes := swag.JoinByFormat(valuesPassCodes, "multi")
	// query array param passCodes
	if err := r.SetQueryParam("passCodes", joinedPassCodes...); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
