// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminCreateContentV2Params creates a new AdminCreateContentV2Params object
// with the default values initialized.
func NewAdminCreateContentV2Params() *AdminCreateContentV2Params {
	var ()
	return &AdminCreateContentV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateContentV2ParamsWithTimeout creates a new AdminCreateContentV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateContentV2ParamsWithTimeout(timeout time.Duration) *AdminCreateContentV2Params {
	var ()
	return &AdminCreateContentV2Params{

		timeout: timeout,
	}
}

// NewAdminCreateContentV2ParamsWithContext creates a new AdminCreateContentV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateContentV2ParamsWithContext(ctx context.Context) *AdminCreateContentV2Params {
	var ()
	return &AdminCreateContentV2Params{

		Context: ctx,
	}
}

// NewAdminCreateContentV2ParamsWithHTTPClient creates a new AdminCreateContentV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateContentV2ParamsWithHTTPClient(client *http.Client) *AdminCreateContentV2Params {
	var ()
	return &AdminCreateContentV2Params{
		HTTPClient: client,
	}
}

/*AdminCreateContentV2Params contains all the parameters to send to the API endpoint
for the admin create content v2 operation typically these are written to a http.Request
*/
type AdminCreateContentV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsAdminContentRequestV2
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin create content v2 params
func (o *AdminCreateContentV2Params) WithTimeout(timeout time.Duration) *AdminCreateContentV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create content v2 params
func (o *AdminCreateContentV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create content v2 params
func (o *AdminCreateContentV2Params) WithContext(ctx context.Context) *AdminCreateContentV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create content v2 params
func (o *AdminCreateContentV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create content v2 params
func (o *AdminCreateContentV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create content v2 params
func (o *AdminCreateContentV2Params) WithHTTPClient(client *http.Client) *AdminCreateContentV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create content v2 params
func (o *AdminCreateContentV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create content v2 params
func (o *AdminCreateContentV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCreateContentV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin create content v2 params
func (o *AdminCreateContentV2Params) WithBody(body *ugcclientmodels.ModelsAdminContentRequestV2) *AdminCreateContentV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create content v2 params
func (o *AdminCreateContentV2Params) SetBody(body *ugcclientmodels.ModelsAdminContentRequestV2) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin create content v2 params
func (o *AdminCreateContentV2Params) WithChannelID(channelID string) *AdminCreateContentV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin create content v2 params
func (o *AdminCreateContentV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the admin create content v2 params
func (o *AdminCreateContentV2Params) WithNamespace(namespace string) *AdminCreateContentV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create content v2 params
func (o *AdminCreateContentV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateContentV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
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
