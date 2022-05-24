// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_content

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

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminUpdateContentDirectParams creates a new AdminUpdateContentDirectParams object
// with the default values initialized.
func NewAdminUpdateContentDirectParams() *AdminUpdateContentDirectParams {
	var ()
	return &AdminUpdateContentDirectParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateContentDirectParamsWithTimeout creates a new AdminUpdateContentDirectParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateContentDirectParamsWithTimeout(timeout time.Duration) *AdminUpdateContentDirectParams {
	var ()
	return &AdminUpdateContentDirectParams{

		timeout: timeout,
	}
}

// NewAdminUpdateContentDirectParamsWithContext creates a new AdminUpdateContentDirectParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateContentDirectParamsWithContext(ctx context.Context) *AdminUpdateContentDirectParams {
	var ()
	return &AdminUpdateContentDirectParams{

		Context: ctx,
	}
}

// NewAdminUpdateContentDirectParamsWithHTTPClient creates a new AdminUpdateContentDirectParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateContentDirectParamsWithHTTPClient(client *http.Client) *AdminUpdateContentDirectParams {
	var ()
	return &AdminUpdateContentDirectParams{
		HTTPClient: client,
	}
}

/*AdminUpdateContentDirectParams contains all the parameters to send to the API endpoint
for the admin update content direct operation typically these are written to a http.Request
*/
type AdminUpdateContentDirectParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateContentRequest
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
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update content direct params
func (o *AdminUpdateContentDirectParams) WithTimeout(timeout time.Duration) *AdminUpdateContentDirectParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update content direct params
func (o *AdminUpdateContentDirectParams) WithContext(ctx context.Context) *AdminUpdateContentDirectParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update content direct params
func (o *AdminUpdateContentDirectParams) WithHTTPClient(client *http.Client) *AdminUpdateContentDirectParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update content direct params
func (o *AdminUpdateContentDirectParams) WithBody(body *ugcclientmodels.ModelsCreateContentRequest) *AdminUpdateContentDirectParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetBody(body *ugcclientmodels.ModelsCreateContentRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin update content direct params
func (o *AdminUpdateContentDirectParams) WithChannelID(channelID string) *AdminUpdateContentDirectParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the admin update content direct params
func (o *AdminUpdateContentDirectParams) WithContentID(contentID string) *AdminUpdateContentDirectParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin update content direct params
func (o *AdminUpdateContentDirectParams) WithNamespace(namespace string) *AdminUpdateContentDirectParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update content direct params
func (o *AdminUpdateContentDirectParams) WithUserID(userID string) *AdminUpdateContentDirectParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update content direct params
func (o *AdminUpdateContentDirectParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateContentDirectParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
