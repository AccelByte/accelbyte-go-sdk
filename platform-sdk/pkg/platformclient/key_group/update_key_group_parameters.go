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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateKeyGroupParams creates a new UpdateKeyGroupParams object
// with the default values initialized.
func NewUpdateKeyGroupParams() *UpdateKeyGroupParams {
	var ()
	return &UpdateKeyGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateKeyGroupParamsWithTimeout creates a new UpdateKeyGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateKeyGroupParamsWithTimeout(timeout time.Duration) *UpdateKeyGroupParams {
	var ()
	return &UpdateKeyGroupParams{

		timeout: timeout,
	}
}

// NewUpdateKeyGroupParamsWithContext creates a new UpdateKeyGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateKeyGroupParamsWithContext(ctx context.Context) *UpdateKeyGroupParams {
	var ()
	return &UpdateKeyGroupParams{

		Context: ctx,
	}
}

// NewUpdateKeyGroupParamsWithHTTPClient creates a new UpdateKeyGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateKeyGroupParamsWithHTTPClient(client *http.Client) *UpdateKeyGroupParams {
	var ()
	return &UpdateKeyGroupParams{
		HTTPClient: client,
	}
}

/*UpdateKeyGroupParams contains all the parameters to send to the API endpoint
for the update key group operation typically these are written to a http.Request
*/
type UpdateKeyGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.KeyGroupUpdate
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

// WithTimeout adds the timeout to the update key group params
func (o *UpdateKeyGroupParams) WithTimeout(timeout time.Duration) *UpdateKeyGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update key group params
func (o *UpdateKeyGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update key group params
func (o *UpdateKeyGroupParams) WithContext(ctx context.Context) *UpdateKeyGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update key group params
func (o *UpdateKeyGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update key group params
func (o *UpdateKeyGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update key group params
func (o *UpdateKeyGroupParams) WithHTTPClient(client *http.Client) *UpdateKeyGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update key group params
func (o *UpdateKeyGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update key group params
func (o *UpdateKeyGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateKeyGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update key group params
func (o *UpdateKeyGroupParams) WithBody(body *platformclientmodels.KeyGroupUpdate) *UpdateKeyGroupParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update key group params
func (o *UpdateKeyGroupParams) SetBody(body *platformclientmodels.KeyGroupUpdate) {
	o.Body = body
}

// WithKeyGroupID adds the keyGroupID to the update key group params
func (o *UpdateKeyGroupParams) WithKeyGroupID(keyGroupID string) *UpdateKeyGroupParams {
	o.SetKeyGroupID(keyGroupID)
	return o
}

// SetKeyGroupID adds the keyGroupId to the update key group params
func (o *UpdateKeyGroupParams) SetKeyGroupID(keyGroupID string) {
	o.KeyGroupID = keyGroupID
}

// WithNamespace adds the namespace to the update key group params
func (o *UpdateKeyGroupParams) WithNamespace(namespace string) *UpdateKeyGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update key group params
func (o *UpdateKeyGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateKeyGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
