// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package key_group

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

// NewGetKeyGroupDynamicParams creates a new GetKeyGroupDynamicParams object
// with the default values initialized.
func NewGetKeyGroupDynamicParams() *GetKeyGroupDynamicParams {
	var ()
	return &GetKeyGroupDynamicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetKeyGroupDynamicParamsWithTimeout creates a new GetKeyGroupDynamicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetKeyGroupDynamicParamsWithTimeout(timeout time.Duration) *GetKeyGroupDynamicParams {
	var ()
	return &GetKeyGroupDynamicParams{

		timeout: timeout,
	}
}

// NewGetKeyGroupDynamicParamsWithContext creates a new GetKeyGroupDynamicParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetKeyGroupDynamicParamsWithContext(ctx context.Context) *GetKeyGroupDynamicParams {
	var ()
	return &GetKeyGroupDynamicParams{

		Context: ctx,
	}
}

// NewGetKeyGroupDynamicParamsWithHTTPClient creates a new GetKeyGroupDynamicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetKeyGroupDynamicParamsWithHTTPClient(client *http.Client) *GetKeyGroupDynamicParams {
	var ()
	return &GetKeyGroupDynamicParams{
		HTTPClient: client,
	}
}

/*GetKeyGroupDynamicParams contains all the parameters to send to the API endpoint
for the get key group dynamic operation typically these are written to a http.Request
*/
type GetKeyGroupDynamicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*KeyGroupID*/
	KeyGroupID string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) WithTimeout(timeout time.Duration) *GetKeyGroupDynamicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) WithContext(ctx context.Context) *GetKeyGroupDynamicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) WithHTTPClient(client *http.Client) *GetKeyGroupDynamicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetKeyGroupDynamicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithKeyGroupID adds the keyGroupID to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) WithKeyGroupID(keyGroupID string) *GetKeyGroupDynamicParams {
	o.SetKeyGroupID(keyGroupID)
	return o
}

// SetKeyGroupID adds the keyGroupId to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) SetKeyGroupID(keyGroupID string) {
	o.KeyGroupID = keyGroupID
}

// WithNamespace adds the namespace to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) WithNamespace(namespace string) *GetKeyGroupDynamicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get key group dynamic params
func (o *GetKeyGroupDynamicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetKeyGroupDynamicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param keyGroupId
	if err := r.SetPathParam("keyGroupId", o.KeyGroupID); err != nil {
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
