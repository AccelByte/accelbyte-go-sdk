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

// NewAdminGenerateOfficialContentUploadURLV2Params creates a new AdminGenerateOfficialContentUploadURLV2Params object
// with the default values initialized.
func NewAdminGenerateOfficialContentUploadURLV2Params() *AdminGenerateOfficialContentUploadURLV2Params {
	var ()
	return &AdminGenerateOfficialContentUploadURLV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGenerateOfficialContentUploadURLV2ParamsWithTimeout creates a new AdminGenerateOfficialContentUploadURLV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGenerateOfficialContentUploadURLV2ParamsWithTimeout(timeout time.Duration) *AdminGenerateOfficialContentUploadURLV2Params {
	var ()
	return &AdminGenerateOfficialContentUploadURLV2Params{

		timeout: timeout,
	}
}

// NewAdminGenerateOfficialContentUploadURLV2ParamsWithContext creates a new AdminGenerateOfficialContentUploadURLV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGenerateOfficialContentUploadURLV2ParamsWithContext(ctx context.Context) *AdminGenerateOfficialContentUploadURLV2Params {
	var ()
	return &AdminGenerateOfficialContentUploadURLV2Params{

		Context: ctx,
	}
}

// NewAdminGenerateOfficialContentUploadURLV2ParamsWithHTTPClient creates a new AdminGenerateOfficialContentUploadURLV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGenerateOfficialContentUploadURLV2ParamsWithHTTPClient(client *http.Client) *AdminGenerateOfficialContentUploadURLV2Params {
	var ()
	return &AdminGenerateOfficialContentUploadURLV2Params{
		HTTPClient: client,
	}
}

/*AdminGenerateOfficialContentUploadURLV2Params contains all the parameters to send to the API endpoint
for the admin generate official content upload urlv2 operation typically these are written to a http.Request
*/
type AdminGenerateOfficialContentUploadURLV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsGenerateContentUploadURLRequest
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) WithTimeout(timeout time.Duration) *AdminGenerateOfficialContentUploadURLV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) WithContext(ctx context.Context) *AdminGenerateOfficialContentUploadURLV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) WithHTTPClient(client *http.Client) *AdminGenerateOfficialContentUploadURLV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) WithBody(body *ugcclientmodels.ModelsGenerateContentUploadURLRequest) *AdminGenerateOfficialContentUploadURLV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) SetBody(body *ugcclientmodels.ModelsGenerateContentUploadURLRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) WithChannelID(channelID string) *AdminGenerateOfficialContentUploadURLV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) WithContentID(contentID string) *AdminGenerateOfficialContentUploadURLV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) WithNamespace(namespace string) *AdminGenerateOfficialContentUploadURLV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin generate official content upload urlv2 params
func (o *AdminGenerateOfficialContentUploadURLV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGenerateOfficialContentUploadURLV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
