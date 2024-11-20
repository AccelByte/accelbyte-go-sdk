// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewGetIAPOrderConsumeDetailsParams creates a new GetIAPOrderConsumeDetailsParams object
// with the default values initialized.
func NewGetIAPOrderConsumeDetailsParams() *GetIAPOrderConsumeDetailsParams {
	var ()
	return &GetIAPOrderConsumeDetailsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetIAPOrderConsumeDetailsParamsWithTimeout creates a new GetIAPOrderConsumeDetailsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetIAPOrderConsumeDetailsParamsWithTimeout(timeout time.Duration) *GetIAPOrderConsumeDetailsParams {
	var ()
	return &GetIAPOrderConsumeDetailsParams{

		timeout: timeout,
	}
}

// NewGetIAPOrderConsumeDetailsParamsWithContext creates a new GetIAPOrderConsumeDetailsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetIAPOrderConsumeDetailsParamsWithContext(ctx context.Context) *GetIAPOrderConsumeDetailsParams {
	var ()
	return &GetIAPOrderConsumeDetailsParams{

		Context: ctx,
	}
}

// NewGetIAPOrderConsumeDetailsParamsWithHTTPClient creates a new GetIAPOrderConsumeDetailsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetIAPOrderConsumeDetailsParamsWithHTTPClient(client *http.Client) *GetIAPOrderConsumeDetailsParams {
	var ()
	return &GetIAPOrderConsumeDetailsParams{
		HTTPClient: client,
	}
}

/*GetIAPOrderConsumeDetailsParams contains all the parameters to send to the API endpoint
for the get iap order consume details operation typically these are written to a http.Request
*/
type GetIAPOrderConsumeDetailsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*IAPOrderNo*/
	IAPOrderNo string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) WithTimeout(timeout time.Duration) *GetIAPOrderConsumeDetailsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) WithContext(ctx context.Context) *GetIAPOrderConsumeDetailsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) WithHTTPClient(client *http.Client) *GetIAPOrderConsumeDetailsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetIAPOrderConsumeDetailsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithIAPOrderNo adds the iAPOrderNo to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) WithIAPOrderNo(iAPOrderNo string) *GetIAPOrderConsumeDetailsParams {
	o.SetIAPOrderNo(iAPOrderNo)
	return o
}

// SetIAPOrderNo adds the iapOrderNo to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) SetIAPOrderNo(iAPOrderNo string) {
	o.IAPOrderNo = iAPOrderNo
}

// WithNamespace adds the namespace to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) WithNamespace(namespace string) *GetIAPOrderConsumeDetailsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get iap order consume details params
func (o *GetIAPOrderConsumeDetailsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetIAPOrderConsumeDetailsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param iapOrderNo
	if err := r.SetPathParam("iapOrderNo", o.IAPOrderNo); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
