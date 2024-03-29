// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// NewAdminUploadContentS3Params creates a new AdminUploadContentS3Params object
// with the default values initialized.
func NewAdminUploadContentS3Params() *AdminUploadContentS3Params {
	var ()
	return &AdminUploadContentS3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUploadContentS3ParamsWithTimeout creates a new AdminUploadContentS3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUploadContentS3ParamsWithTimeout(timeout time.Duration) *AdminUploadContentS3Params {
	var ()
	return &AdminUploadContentS3Params{

		timeout: timeout,
	}
}

// NewAdminUploadContentS3ParamsWithContext creates a new AdminUploadContentS3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUploadContentS3ParamsWithContext(ctx context.Context) *AdminUploadContentS3Params {
	var ()
	return &AdminUploadContentS3Params{

		Context: ctx,
	}
}

// NewAdminUploadContentS3ParamsWithHTTPClient creates a new AdminUploadContentS3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUploadContentS3ParamsWithHTTPClient(client *http.Client) *AdminUploadContentS3Params {
	var ()
	return &AdminUploadContentS3Params{
		HTTPClient: client,
	}
}

/*AdminUploadContentS3Params contains all the parameters to send to the API endpoint
for the admin upload content s3 operation typically these are written to a http.Request
*/
type AdminUploadContentS3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateContentRequestS3
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

// WithTimeout adds the timeout to the admin upload content s3 params
func (o *AdminUploadContentS3Params) WithTimeout(timeout time.Duration) *AdminUploadContentS3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin upload content s3 params
func (o *AdminUploadContentS3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin upload content s3 params
func (o *AdminUploadContentS3Params) WithContext(ctx context.Context) *AdminUploadContentS3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin upload content s3 params
func (o *AdminUploadContentS3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin upload content s3 params
func (o *AdminUploadContentS3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin upload content s3 params
func (o *AdminUploadContentS3Params) WithHTTPClient(client *http.Client) *AdminUploadContentS3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin upload content s3 params
func (o *AdminUploadContentS3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin upload content s3 params
func (o *AdminUploadContentS3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUploadContentS3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin upload content s3 params
func (o *AdminUploadContentS3Params) WithBody(body *ugcclientmodels.ModelsCreateContentRequestS3) *AdminUploadContentS3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin upload content s3 params
func (o *AdminUploadContentS3Params) SetBody(body *ugcclientmodels.ModelsCreateContentRequestS3) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin upload content s3 params
func (o *AdminUploadContentS3Params) WithChannelID(channelID string) *AdminUploadContentS3Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin upload content s3 params
func (o *AdminUploadContentS3Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the admin upload content s3 params
func (o *AdminUploadContentS3Params) WithNamespace(namespace string) *AdminUploadContentS3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin upload content s3 params
func (o *AdminUploadContentS3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUploadContentS3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
